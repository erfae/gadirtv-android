from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import StreamingResponse, FileResponse
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import httpx
import os
from urllib.parse import quote

app = FastAPI()
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_credentials=True, allow_methods=["*"], allow_headers=["*"])

XTREAM_HOST = "http://gadir.co:80"

class LoginBody(BaseModel):
    username: str
    password: str

async def xtream_get(action: str, username: str, password: str, extra: dict | None = None):
    params = {"username": username, "password": password}
    if action:
        params["action"] = action
    if extra:
        params.update(extra)
    async with httpx.AsyncClient(timeout=30.0, follow_redirects=True) as client:
        r = await client.get(f"{XTREAM_HOST}/player_api.php", params=params, headers={"User-Agent": "GadirTV/1.0"})
        r.raise_for_status()
        try:
            return r.json()
        except Exception:
            return {"raw": r.text}

@app.get("/api/")
async def root():
    return {"service": "GadirTV proxy", "host": XTREAM_HOST}


NO_CACHE_HEADERS = {
    "Cache-Control": "no-store, no-cache, must-revalidate, max-age=0",
    "Pragma": "no-cache",
    "Expires": "0",
}


@app.get("/api/download/installer")
async def download_installer():
    path = "/app/electron/GadirTV-Setup-1.2.exe"
    if not os.path.exists(path):
        raise HTTPException(404, "installer not built yet")
    return FileResponse(path, filename="GadirTV-Setup-1.2.exe", media_type="application/octet-stream", headers=NO_CACHE_HEADERS)


@app.get("/api/download/installer_zip")
async def download_installer_zip():
    """Installer .exe wrapped in a ZIP so Chrome/Edge do not block download."""
    path = "/app/electron/GadirTV-Installer-v1.2.zip"
    if not os.path.exists(path):
        raise HTTPException(404, "installer zip not built yet")
    return FileResponse(path, filename="GadirTV-Installer-v1.2.zip", media_type="application/zip", headers=NO_CACHE_HEADERS)


@app.get("/api/download/portable")
async def download_portable():
    path = "/app/electron/GadirTV-Portable-v1.2.zip"
    if not os.path.exists(path):
        raise HTTPException(404, "portable zip not built yet")
    return FileResponse(path, filename="GadirTV-Portable-v1.2.zip", media_type="application/zip", headers=NO_CACHE_HEADERS)


@app.get("/api/download/encrypted")
async def download_encrypted():
    """Password-protected ZIP so Chrome cannot inspect the contents and
    downgrade/block the download. Password: gadir"""
    path = "/app/electron/GadirTV-Portable-v1.2-encrypted.zip"
    if not os.path.exists(path):
        raise HTTPException(404, "encrypted zip not built yet")
    return FileResponse(path, filename="GadirTV-Portable-v1.2-encrypted.zip", media_type="application/zip", headers=NO_CACHE_HEADERS)

@app.post("/api/login")
async def login(body: LoginBody):
    try:
        data = await xtream_get("", body.username, body.password)
        if isinstance(data, dict) and data.get("user_info", {}).get("auth") == 1:
            return {"ok": True, "user_info": data.get("user_info"), "server_info": data.get("server_info")}
        return {"ok": False, "error": "Credenciales inválidas"}
    except Exception as e:
        raise HTTPException(500, f"Login error: {e}")

@app.get("/api/live/categories")
async def live_categories(username: str, password: str):
    return await xtream_get("get_live_categories", username, password)

@app.get("/api/live/streams")
async def live_streams(username: str, password: str, category_id: str | None = None):
    return await xtream_get("get_live_streams", username, password, {"category_id": category_id} if category_id else None)

@app.get("/api/vod/categories")
async def vod_categories(username: str, password: str):
    return await xtream_get("get_vod_categories", username, password)

@app.get("/api/vod/streams")
async def vod_streams(username: str, password: str, category_id: str | None = None):
    return await xtream_get("get_vod_streams", username, password, {"category_id": category_id} if category_id else None)

@app.get("/api/vod/info")
async def vod_info(username: str, password: str, vod_id: str):
    return await xtream_get("get_vod_info", username, password, {"vod_id": vod_id})

@app.get("/api/series/categories")
async def series_categories(username: str, password: str):
    return await xtream_get("get_series_categories", username, password)

@app.get("/api/series/list")
async def series_list(username: str, password: str, category_id: str | None = None):
    return await xtream_get("get_series", username, password, {"category_id": category_id} if category_id else None)

@app.get("/api/series/info")
async def series_info(username: str, password: str, series_id: str):
    return await xtream_get("get_series_info", username, password, {"series_id": series_id})

@app.get("/api/epg/short")
async def epg_short(username: str, password: str, stream_id: str, limit: int = 10):
    return await xtream_get("get_short_epg", username, password, {"stream_id": stream_id, "limit": limit})

@app.get("/api/stream_url")
async def stream_url(username: str, password: str, stream_id: str, kind: str = "live", ext: str = "ts"):
    u, p = quote(username, safe=""), quote(password, safe="")
    paths = {"live": "live", "movie": "movie", "series": "series"}
    if kind not in paths:
        raise HTTPException(400, "kind must be live|movie|series")
    return {"url": f"{XTREAM_HOST}/{paths[kind]}/{u}/{p}/{stream_id}.{ext}"}


@app.get("/api/img")
async def img_proxy(url: str):
    """Proxies remote (usually HTTP) images through HTTPS so browsers
    don't block them for mixed-content reasons."""
    if not url.startswith(("http://", "https://")):
        raise HTTPException(400, "invalid url")
    try:
        async with httpx.AsyncClient(timeout=15.0, follow_redirects=True) as client:
            r = await client.get(url, headers={"User-Agent": "Mozilla/5.0"})
    except Exception as e:
        raise HTTPException(502, f"img fetch failed: {e}")
    if r.status_code >= 400:
        raise HTTPException(r.status_code, "upstream error")
    ct = r.headers.get("content-type", "image/jpeg")
    return StreamingResponse(iter([r.content]), media_type=ct, headers={"Cache-Control": "public, max-age=86400"})


@app.get("/api/stream")
async def stream(request: Request, kind: str, username: str, password: str, stream_id: str, ext: str = "ts"):
    paths = {"live": "live", "movie": "movie", "series": "series"}
    if kind not in paths:
        raise HTTPException(400, "kind must be live|movie|series")
    u, p = quote(username, safe=""), quote(password, safe="")
    upstream = f"{XTREAM_HOST}/{paths[kind]}/{u}/{p}/{stream_id}.{ext}"

    fwd_headers = {"User-Agent": "VLC/3.0.20 LibVLC/3.0.20"}
    range_hdr = request.headers.get("range")
    if range_hdr:
        fwd_headers["Range"] = range_hdr

    client = httpx.AsyncClient(timeout=None, follow_redirects=True)
    req = client.build_request("GET", upstream, headers=fwd_headers)
    r = await client.send(req, stream=True)

    async def gen():
        try:
            async for chunk in r.aiter_raw(chunk_size=64 * 1024):
                yield chunk
        finally:
            await r.aclose()
            await client.aclose()

    ct = r.headers.get("content-type") or ("video/mp2t" if ext == "ts" else "video/mp4")
    resp_headers = {"Cache-Control": "no-store", "Accept-Ranges": "bytes"}
    for h in ("content-length", "content-range"):
        if h in r.headers:
            resp_headers[h.title()] = r.headers[h]
    status = r.status_code
    return StreamingResponse(gen(), media_type=ct, status_code=status, headers=resp_headers)
