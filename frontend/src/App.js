import React, { useState, useEffect, useRef } from "react";
import axios from "axios";
import mpegts from "mpegts.js";
import Hls from "hls.js";
import { Play, Search, Tv, Film, Clapperboard, LogOut, Plus, X, ChevronLeft, Home as HomeIcon, ChevronRight, Trash2, Settings, Maximize2, RefreshCw, Volume2, VolumeX, Minus, Square } from "lucide-react";
import { api, IS_ELECTRON, newSession } from "./api";
import "./App.css";

const API = `${process.env.REACT_APP_BACKEND_URL}/api`;
const IMG_FB = "https://images.unsplash.com/photo-1489599328109-c6b8b7cfd3aa?w=400";
const store = {
  getProfiles: () => JSON.parse(localStorage.getItem("gp") || "[]"),
  saveProfiles: (p) => localStorage.setItem("gp", JSON.stringify(p)),
  getActive: () => JSON.parse(localStorage.getItem("ga") || "null"),
  setActive: (p) => localStorage.setItem("ga", JSON.stringify(p)),
};

function TitleBar() {
  const isElectron = typeof window !== "undefined" && !!window.electronAPI;
  if (!isElectron) return null;
  return (
    <div
      className="fixed top-0 left-0 right-0 h-8 flex items-center justify-end z-[200] pointer-events-none"
      style={{ WebkitAppRegion: "drag" }}
    >
      <div className="flex items-center gap-1 pr-2 pointer-events-auto" style={{ WebkitAppRegion: "no-drag" }}>
        <button onClick={()=>window.electronAPI.winMin()} data-testid="win-min" title="Minimizar" className="w-9 h-7 flex items-center justify-center text-white/40 hover:text-white hover:bg-white/10 rounded transition-colors">
          <Minus size={14}/>
        </button>
        <button onClick={()=>window.electronAPI.winMax()} data-testid="win-max" title="Maximizar" className="w-9 h-7 flex items-center justify-center text-white/40 hover:text-white hover:bg-white/10 rounded transition-colors">
          <Square size={12}/>
        </button>
        <button onClick={()=>window.electronAPI.winClose()} data-testid="win-close" title="Cerrar" className="w-9 h-7 flex items-center justify-center text-white/40 hover:text-white hover:bg-red-600 rounded transition-colors">
          <X size={14}/>
        </button>
      </div>
    </div>
  );
}

function Profiles({ onSelect, onAdd }) {
  const [profiles, setProfiles] = useState(store.getProfiles());
  const [manage, setManage] = useState(false);
  const removeProfile = (idx) => {
    const next = profiles.filter((_, i) => i !== idx);
    store.saveProfiles(next);
    const active = store.getActive();
    if (active && profiles[idx] && active.username === profiles[idx].username) store.setActive(null);
    setProfiles(next);
    if (!next.length) setManage(false);
  };
  return (
    <div className="min-h-screen flex items-center justify-center bg-[#050505]" data-testid="profile-screen">
      <div className="text-center w-full px-8">
        <img src="./gadir-logo.png" alt="GadirTV" className="mx-auto mb-6 w-72 h-auto drop-shadow-2xl" style={{filter:"drop-shadow(0 0 30px rgba(220,38,38,0.4))"}} onError={e=>e.target.style.display='none'}/>
        <p className="text-neutral-500 text-lg mb-12">{manage ? "Toca la papelera para eliminar" : "¿Quién está viendo?"}</p>
        <div className="flex flex-wrap gap-8 justify-center max-w-4xl mx-auto">
          {profiles.map((p, i) => (
            <div key={i} className="relative">
              <button onClick={()=>!manage && onSelect(p)} data-testid={`profile-${i}`} className="group flex flex-col items-center gap-3">
                <div className={"w-32 h-32 rounded-2xl bg-gradient-to-br from-red-600 to-red-900 flex items-center justify-center text-4xl font-medium text-white shadow-2xl transition-transform duration-300 " + (manage?"":"group-hover:scale-110")}>{p.name.charAt(0).toUpperCase()}</div>
                <span className="text-neutral-300 group-hover:text-white">{p.name}</span>
              </button>
              {manage && (
                <button onClick={()=>removeProfile(i)} data-testid={`delete-profile-${i}`} className="absolute -top-2 -right-2 w-9 h-9 rounded-full bg-red-600 hover:bg-red-500 flex items-center justify-center text-white shadow-lg">
                  <Trash2 size={16}/>
                </button>
              )}
            </div>
          ))}
          {!manage && (
            <button onClick={onAdd} data-testid="add-profile-btn" className="group flex flex-col items-center gap-3">
              <div className="w-32 h-32 rounded-2xl border-2 border-dashed border-neutral-700 flex items-center justify-center text-neutral-500 group-hover:border-white group-hover:text-white transition-all duration-300"><Plus size={40}/></div>
              <span className="text-neutral-500 group-hover:text-white">Añadir usuario</span>
            </button>
          )}
        </div>
        {profiles.length > 0 && (
          <button onClick={()=>setManage(m=>!m)} data-testid="manage-profiles-btn" className="mt-12 text-neutral-500 hover:text-white flex items-center gap-2 mx-auto text-sm">
            {manage ? <><X size={16}/>Hecho</> : <><Settings size={16}/>Gestionar perfiles</>}
          </button>
        )}
      </div>
    </div>
  );
}

function Login({ onLogin, onCancel }) {
  const [name, setName] = useState(""), [u, setU] = useState(""), [p, setP] = useState("");
  const [loading, setLoading] = useState(false), [warn, setWarn] = useState("");
  const [diag, setDiag] = useState(null), [diagLoading, setDiagLoading] = useState(false);
  const runDiag = async () => {
    setDiag(null); setDiagLoading(true);
    const lines = [];
    lines.push(`IS_ELECTRON = ${IS_ELECTRON}`);
    lines.push(`electronAPI.xtreamGet = ${!!(typeof window !== 'undefined' && window.electronAPI && window.electronAPI.xtreamGet)}`);
    lines.push('');
    const testU = u || 'seismeses01';
    const testP = p || '3d13zxs5oz';
    const testProfile = { username: testU, password: testP };
    const testCall = async (label, promise) => {
      lines.push(`--- ${label} ---`);
      const t0 = Date.now();
      try {
        const data = await promise;
        const ms = Date.now() - t0;
        const isArr = Array.isArray(data);
        const kind = isArr ? `array(${data.length})` : (data === null ? 'null' : typeof data);
        lines.push(`ok time=${ms}ms type=${kind}`);
        const snippet = (typeof data === 'string' ? data : JSON.stringify(data)).slice(0, 260);
        lines.push(`data: ${snippet}`);
      } catch (e) {
        lines.push(`FAIL time=${Date.now()-t0}ms name=${e.name} msg=${e.message}${e.code ? ' code=' + e.code : ''}`);
      }
      lines.push('');
    };
    // 0) auth
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.xtreamGet) {
      lines.push('--- [0] auth via IPC ---');
      try {
        const res = await window.electronAPI.xtreamGet({ baseUrl: 'http://gadir.co:80', username: testU, password: testP });
        lines.push(`ok=${res && res.ok} status=${res && res.status}${res && res.error ? ' err='+res.error : ''}`);
      } catch (e) { lines.push('EXC: ' + e.message); }
      lines.push('');
    }
    await testCall('[1] get_live_categories', api.liveCategories(testProfile));
    await testCall('[2] get_vod_categories',  api.vodCategories(testProfile));
    await testCall('[3] get_series_categories', api.seriesCategories(testProfile));
    setDiag(lines.join('\n'));
    setDiagLoading(false);
  };
  const submit = async (e) => {
    e.preventDefault(); setWarn(""); setLoading(true);
    const prof = { name: name || u, username: u, password: p };
    // Save profile locally regardless of server reachability (optimistic).
    const ps = store.getProfiles();
    const i = ps.findIndex(x => x.username === u);
    if (i >= 0) ps[i] = prof; else ps.push(prof);
    store.saveProfiles(ps);
    // Try to validate in background — do not block entry.
    try {
      const data = await api.login(u, p);
      if (data && data.ok === false) {
        setWarn("Credenciales rechazadas por el servidor. Puedes entrar igualmente para revisar.");
      }
    } catch (_) {
      // Server unreachable — allow entry anyway.
    }
    setLoading(false);
    onLogin(prof);
  };
  return (
    <div className="min-h-screen flex items-center justify-center bg-[#050505] py-10" style={{backgroundImage:"linear-gradient(rgba(0,0,0,0.75),rgba(5,5,5,1)),url(https://images.unsplash.com/photo-1489599328109-c6b8b7cfd3aa?w=1920)",backgroundSize:"cover"}} data-testid="login-screen">
      <div className="w-full max-w-md p-10 rounded-3xl backdrop-blur-2xl bg-black/60 border border-white/10">
        <button onClick={onCancel} className="text-neutral-500 hover:text-white mb-6 flex items-center gap-2" data-testid="back-btn"><ChevronLeft size={20}/>Volver</button>
        <img src="./gadir-logo.png" alt="GadirTV" className="w-48 h-auto mb-6 drop-shadow-xl" style={{filter:"drop-shadow(0 0 20px rgba(220,38,38,0.5))"}} onError={e=>e.target.style.display='none'}/>
        <form onSubmit={submit} className="space-y-4">
          <input placeholder="Nombre perfil (opcional)" value={name} onChange={e=>setName(e.target.value)} className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white placeholder:text-neutral-500 focus:outline-none focus:border-red-600" data-testid="profile-name-input"/>
          <input placeholder="Usuario" value={u} onChange={e=>setU(e.target.value)} required className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white focus:outline-none focus:border-red-600" data-testid="username-input"/>
          <input type="password" placeholder="Contraseña" value={p} onChange={e=>setP(e.target.value)} required className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white focus:outline-none focus:border-red-600" data-testid="password-input"/>
          <div className="text-xs text-neutral-500 pl-5">Servidor: <span className="text-neutral-400">gadir.co:80</span> · Build v1.2 (embed)</div>
          {warn && <div className="text-amber-400 text-xs text-center" data-testid="warn-msg">{warn}</div>}
          <button type="submit" disabled={loading} className="w-full py-4 rounded-full bg-red-600 hover:bg-red-500 text-white font-medium transition-colors disabled:opacity-50" data-testid="login-btn">{loading?"Guardando...":"Entrar"}</button>
        </form>
        <button type="button" onClick={runDiag} disabled={diagLoading} className="mt-4 w-full py-3 rounded-full bg-white/5 hover:bg-white/10 border border-white/10 text-white text-sm transition-colors disabled:opacity-50" data-testid="diag-btn">
          {diagLoading ? "Probando..." : "Diagnóstico de conexión con gadir.co"}
        </button>
        {diag && (
          <pre data-testid="diag-output" className="mt-3 p-3 text-[11px] leading-relaxed bg-black/80 border border-red-800/40 rounded-xl text-green-300 whitespace-pre-wrap break-all max-h-72 overflow-auto">{diag}</pre>
        )}
      </div>
    </div>
  );
}

function BottomNav({ tab, setTab }) {
  const items = [
    {id:"home",icon:HomeIcon,label:"Inicio"},
    {id:"live",icon:Tv,label:"TV en Vivo"},
    {id:"movies",icon:Film,label:"Películas"},
    {id:"series",icon:Clapperboard,label:"Series"},
  ];
  return (
    <nav className="fixed bottom-0 left-0 right-0 z-40 backdrop-blur-2xl bg-black/90 border-t border-white/10">
      <div className="flex justify-around max-w-5xl mx-auto py-3">
        {items.map(it => {
          const I = it.icon; const active = tab === it.id;
          return (
            <button key={it.id} onClick={()=>setTab(it.id)} data-testid={`nav-${it.id}`} className={"flex flex-col items-center gap-1 md:gap-1.5 px-4 md:px-6 lg:px-8 py-2 md:py-3 rounded-2xl transition-all duration-200 " + (active?"bg-red-600/15 text-red-500 scale-105":"text-neutral-400 hover:text-white hover:bg-white/5")}>
              <I className="w-6 h-6 md:w-7 md:h-7" strokeWidth={active?2.5:2}/>
              <span className="text-xs md:text-sm font-medium">{it.label}</span>
            </button>
          );
        })}
      </div>
    </nav>
  );
}

function ItemCard({ item, onSelect, big, sm, xl, onHover }) {
  const cover = item.stream_icon || item.cover;
  const proxied = api.proxyImg(cover) || IMG_FB;
  const sizeCls = xl
    ? "w-40 sm:w-44 md:w-52 lg:w-56"
    : big
      ? "w-40"
      : sm
        ? "w-28 md:w-32"
        : "w-32 md:w-40 lg:w-44";
  return (
    <button
      onClick={onSelect}
      onMouseEnter={()=>onHover && onHover(proxied)}
      onMouseLeave={()=>onHover && onHover(null)}
      data-testid={`card-${item.stream_id||item.series_id}`}
      className={"shrink-0 group " + sizeCls}
    >
      <div className="aspect-[2/3] rounded-md overflow-hidden bg-neutral-900 group-hover:ring-2 ring-red-600 group-hover:scale-110 group-hover:z-20 relative transition-all duration-300 shadow-xl">
        <img src={proxied} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="w-full h-full object-cover" loading="lazy" alt=""/>
      </div>
      <p className="text-xs text-neutral-300 mt-1.5 truncate group-hover:text-white">{item.name}</p>
    </button>
  );
}

function Rail({ title, items, onSelect, big, sm, xl, onHover }) {
  const scrollRef = useRef(null);
  if (!items || !items.length) return null;
  const scroll = (dir) => {
    const el = scrollRef.current;
    if (!el) return;
    el.scrollBy({ left: dir * (el.clientWidth * 0.85), behavior: 'smooth' });
  };
  return (
    <section className="mb-6 group/rail relative">
      <h2 className="text-base md:text-lg font-medium text-white mb-2 tracking-tight px-8" style={{fontFamily:"'Outfit',sans-serif"}}>{title}</h2>
      <button onClick={()=>scroll(-1)} className="absolute left-1 top-1/2 -translate-y-1/2 z-10 w-10 h-16 rounded-r-lg bg-black/70 hover:bg-black/90 text-white opacity-0 group-hover/rail:opacity-100 transition-opacity flex items-center justify-center" data-testid="rail-scroll-left">
        <ChevronLeft size={22}/>
      </button>
      <button onClick={()=>scroll(1)} className="absolute right-1 top-1/2 -translate-y-1/2 z-10 w-10 h-16 rounded-l-lg bg-black/70 hover:bg-black/90 text-white opacity-0 group-hover/rail:opacity-100 transition-opacity flex items-center justify-center" data-testid="rail-scroll-right">
        <ChevronRight size={22}/>
      </button>
      <div ref={scrollRef} className="flex gap-3 overflow-x-auto overflow-y-visible scrollbar-hide px-8 pb-6 pt-2 scroll-smooth">
        {items.slice(0, 30).map((it, i) => <ItemCard key={i} item={it} big={big} sm={sm} xl={xl} onHover={onHover} onSelect={()=>onSelect(it)}/>)}
      </div>
    </section>
  );
}

function CategorySection({ kind, profile, onSelect, livePreview, onHover }) {
  const [cats, setCats] = useState([]);
  const [byCat, setByCat] = useState({});
  const [active, setActive] = useState(null);
  const [loading, setLoading] = useState(true);
  const [err, setErr] = useState("");
  const [search, setSearch] = useState("");

  useEffect(() => {
    let cancelled = false;
    (async () => {
      setLoading(true); setActive(null); setSearch(""); setByCat({}); setErr("");
      try {
        const fn = kind==="live"?api.liveCategories:kind==="movie"?api.vodCategories:api.seriesCategories;
        const data = await fn(profile);
        if (cancelled) return;
        const c = Array.isArray(data) ? data : [];
        c.sort((a,b)=>String(a.category_name||"").localeCompare(String(b.category_name||""), "es", { numeric: true, sensitivity: "base" }));
        setCats(c);
        if (c.length) setActive(c[0]);
        else setErr(`El servidor no devolvió grupos (tipo: ${Array.isArray(data)?'array vacío':typeof data}). Contenido: ${JSON.stringify(data).slice(0,180)}`);
      } catch(e) { if (!cancelled) setErr(`No se pudo conectar: ${e.name || 'Error'}: ${e.message}${e.code ? ' ['+e.code+']' : ''}`); }
      if (!cancelled) setLoading(false);
    })();
    return () => { cancelled = true; };
  }, [kind, profile]);

  useEffect(() => {
    if (!active || byCat[active.category_id]) return;
    let cancelled = false;
    (async () => {
      try {
        const fn = kind==="live"?api.liveStreams:kind==="movie"?api.vodStreams:api.seriesList;
        const data = await fn(profile, active.category_id);
        if (cancelled) return;
        setByCat(prev => ({ ...prev, [active.category_id]: Array.isArray(data)?data:[] }));
      } catch(e) { console.error(e); }
    })();
    return () => { cancelled = true; };
  }, [active, kind, profile]);

  const items = active ? (byCat[active.category_id]||[]) : [];
  const q = search.toLowerCase();
  const filtered = q ? items.filter(x => (x.name||"").toLowerCase().includes(q)) : items;

  return (
    <div className="pt-16 pb-24 px-8" data-testid={`section-${kind}`}>
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-2xl font-medium tracking-tight" style={{fontFamily:"'Outfit',sans-serif"}}>{kind==="live"?"TV en Vivo":kind==="movie"?"Películas":"Series"}</h1>
        <div className="relative">
          <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-neutral-500"/>
          <input placeholder="Buscar..." value={search} onChange={e=>setSearch(e.target.value)} data-testid={`search-${kind}`} className="pl-9 pr-3 py-1.5 rounded-full bg-white/5 border border-white/10 text-sm focus:outline-none focus:border-red-600 w-56"/>
        </div>
      </div>
      {loading && <div className="text-neutral-500 py-20" data-testid="loading">Cargando...</div>}
      {!loading && err && <div className="text-red-400 py-20 text-center" data-testid="cat-error">{err}</div>}
      {!loading && !err && (
        <div className={"grid gap-3 md:gap-4 lg:gap-5 " + (kind==="live" ? "grid-cols-[140px_1fr] md:grid-cols-[170px_1fr_260px] lg:grid-cols-[190px_1fr_360px] xl:grid-cols-[210px_1fr_460px]" : "grid-cols-[140px_1fr] md:grid-cols-[180px_1fr] lg:grid-cols-[220px_1fr]")}>
          <aside className="max-h-[calc(100vh-220px)] overflow-y-auto pr-2 scrollbar-thin">
            <h3 className="text-xs uppercase tracking-widest text-neutral-500 mb-3">Grupos ({cats.length})</h3>
            <div className="space-y-1">
              {cats.map(c => (
                <button key={c.category_id} onClick={()=>setActive(c)} data-testid={`cat-${c.category_id}`} className={"w-full text-left px-3 py-2 rounded-lg text-xs transition-all flex items-center justify-between group " + (active?.category_id===c.category_id?"bg-red-600 text-white":"text-neutral-400 hover:bg-white/5 hover:text-white")}>
                  <span className="truncate">{c.category_name}</span>
                  <ChevronRight size={12} className="opacity-0 group-hover:opacity-60"/>
                </button>
              ))}
            </div>
          </aside>
          <main>
            {active && <h2 className="text-base text-neutral-400 mb-3">{active.category_name} <span className="text-neutral-600">· {filtered.length}</span></h2>}
            {kind === "live" ? (
              <div className="space-y-0.5 max-h-[calc(100vh-200px)] overflow-y-auto pr-2 scrollbar-thin">
                {filtered.map((it, i) => (
                  <button
                    key={i}
                    onClick={()=>onSelect(it, kind)}
                    onDoubleClick={()=>onSelect(it, "live_fs")}
                    data-testid={`card-${it.stream_id}`}
                    className="w-full flex items-center gap-3 px-3 py-2 rounded-lg text-left hover:bg-white/5 transition-colors group"
                    title="Clic: previsualizar · Doble clic: pantalla completa"
                  >
                    <div className="w-9 h-9 rounded bg-neutral-900 overflow-hidden flex-shrink-0 flex items-center justify-center">
                      <img src={api.proxyImg(it.stream_icon) || IMG_FB} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="w-full h-full object-contain" loading="lazy" alt=""/>
                    </div>
                    <span className="text-neutral-300 group-hover:text-white text-sm truncate flex-1">{it.name}</span>
                    <Play size={13} className="text-neutral-600 group-hover:text-red-500 flex-shrink-0"/>
                  </button>
                ))}
              </div>
            ) : (
              <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 xl:grid-cols-7 gap-3 max-h-[calc(100vh-200px)] overflow-y-auto scrollbar-thin pr-2 pt-2">
                {filtered.map((it, i) => <ItemCard key={i} item={it} onHover={onHover} onSelect={()=>onSelect(it, kind)} sm/>)}
              </div>
            )}
            {!filtered.length && active && <p className="text-neutral-500">No hay contenido en este grupo</p>}
          </main>
          {kind === "live" && (
            <aside className="sticky top-4 self-start hidden md:block">
              {livePreview}
            </aside>
          )}
        </div>
      )}
    </div>
  );
}

function HomeTab({ profile, onSelect, onHover }) {
  const [recentMovies, setRM] = useState([]);
  const [recentSeries, setRS] = useState([]);
  const [featuredCats, setFeaturedCats] = useState([]); // [{category_name, items[]}]
  const [heroIdx, setHeroIdx] = useState(0);
  const [loading, setLoading] = useState(true);
  const [msg, setMsg] = useState("");

  useEffect(() => {
    let cancelled = false;
    (async () => {
      setLoading(true); setMsg("");
      const sortByAdded = arr => Array.isArray(arr) ? [...arr].sort((a,b)=>(parseInt(b.added||b.last_modified||0))-(parseInt(a.added||a.last_modified||0))) : [];
      const withTimeout = (p, ms) => Promise.race([p, new Promise((_, rej) => setTimeout(()=>rej(new Error("timeout")), ms))]);
      const loadFromCategories = async (fetchCats, fetchStreams, tag) => {
        try {
          const cats = await withTimeout(fetchCats(profile), 10000);
          const catList = Array.isArray(cats) ? cats : [];
          if (catList.length) {
            const sample = catList.slice(0, 4);
            const results = await Promise.all(sample.map(c =>
              withTimeout(fetchStreams(profile, c.category_id), 8000).catch(()=>[])
            ));
            const flat = [].concat(...results.filter(Array.isArray));
            if (flat.length) return { flat: sortByAdded(flat), cats: catList };
          }
          const all = await withTimeout(fetchStreams(profile), 15000).catch(()=>[]);
          return { flat: sortByAdded(Array.isArray(all) ? all : []), cats: catList };
        } catch (e) { console.error(`[home] ${tag} failed:`, e.message); return { flat: [], cats: [] }; }
      };
      const [vod, ser] = await Promise.all([
        loadFromCategories(api.vodCategories, api.vodStreams, "vod"),
        loadFromCategories(api.seriesCategories, api.seriesList, "series"),
      ]);
      if (cancelled) return;
      setRM(vod.flat.slice(0, 30));
      setRS(ser.flat.slice(0, 30));
      // Build featured category rails from VOD categories that look interesting
      // (skip adult categories and anything with 0 items). Grab up to 5 categories.
      const bad = /(adult|xxx|erotic|\+18|foradults)/i;
      const goodCats = (vod.cats || []).filter(c => !bad.test(String(c.category_name||''))).slice(0, 6);
      const featured = [];
      for (const c of goodCats) {
        try {
          const items = await withTimeout(api.vodStreams(profile, c.category_id), 6000).catch(()=>[]);
          if (Array.isArray(items) && items.length) {
            featured.push({ name: c.category_name, items: sortByAdded(items).slice(0, 20) });
          }
          if (featured.length >= 4) break;
        } catch (_) {}
      }
      if (!cancelled) setFeaturedCats(featured);
      if (!vod.flat.length && !ser.flat.length) setMsg("No se pudo cargar contenido reciente. Comprueba conexión con gadir.co o si tu cuenta tiene VOD/Series.");
      setLoading(false);
    })();
    return () => { cancelled = true; };
  }, [profile]);

  const heroList = [...recentMovies.slice(0,5), ...recentSeries.slice(0,5)];
  useEffect(() => {
    if (!heroList.length) return;
    const t = setInterval(()=>setHeroIdx(i=>(i+1)%heroList.length), 7000);
    return ()=>clearInterval(t);
  }, [heroList.length]);
  const hero = heroList[heroIdx];

  return (
    <div className="flex flex-col h-screen pb-24 overflow-hidden" data-testid="home-tab">
      {hero && (
        <div className="relative flex-shrink-0" style={{height:"55vh"}}>
          <img src={api.proxyImg(hero.stream_icon||hero.cover) || IMG_FB} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="absolute inset-0 w-full h-full object-cover animate-slow-zoom" alt=""/>
          <div className="absolute inset-0 bg-gradient-to-r from-black/95 via-black/60 to-transparent"/>
          <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-transparent to-transparent"/>
          {/* Dots indicator */}
          <div className="absolute bottom-4 right-8 flex gap-2 z-10">
            {heroList.map((_, i) => (
              <button key={i} onClick={()=>setHeroIdx(i)} className={"h-1 rounded-full transition-all " + (i===heroIdx?"w-8 bg-red-600":"w-4 bg-white/30 hover:bg-white/60")} data-testid={`hero-dot-${i}`}/>
            ))}
          </div>
          <div className="absolute bottom-8 left-8 max-w-2xl z-10">
            <p className="text-red-500 text-[11px] font-medium tracking-[0.3em] uppercase mb-3">{hero.series_id?"Serie":"Película"} · Reciente en GadirTV</p>
            <h1 className="text-3xl md:text-5xl lg:text-6xl font-medium tracking-tight mb-4 drop-shadow-2xl" style={{fontFamily:"'Outfit',sans-serif"}}>{hero.name}</h1>
            <div className="flex items-center gap-3">
              <button onClick={()=>onSelect(hero, hero.series_id?"series":"movie")} data-testid="hero-play-btn" className="flex items-center gap-2 bg-white text-black px-7 py-3 rounded-full font-medium hover:bg-neutral-200 transition-all text-sm shadow-2xl">
                <Play size={18} fill="black"/>Reproducir
              </button>
              <button onClick={()=>onSelect(hero, hero.series_id?"series":"movie")} data-testid="hero-info-btn" className="flex items-center gap-2 bg-white/10 backdrop-blur border border-white/20 text-white px-6 py-3 rounded-full font-medium hover:bg-white/20 transition-all text-sm">
                Más información
              </button>
            </div>
          </div>
        </div>
      )}
      <div className="flex-1 min-h-0 overflow-y-auto overflow-x-hidden pt-4 scrollbar-hide">
        {loading && <div className="text-center text-neutral-500 py-10" data-testid="loading-home">Cargando contenido…</div>}
        {!loading && msg && <div className="text-center text-red-400 py-10 text-sm px-8" data-testid="home-msg">{msg}</div>}
        <Rail title="Añadidos recientemente · Películas" items={recentMovies} onSelect={i=>onSelect(i,"movie")} onHover={onHover} xl/>
        <Rail title="Añadidas recientemente · Series" items={recentSeries} onSelect={i=>onSelect(i,"series")} onHover={onHover} xl/>
        {featuredCats.map((fc, i) => (
          <Rail key={i} title={fc.name} items={fc.items} onSelect={it=>onSelect(it,"movie")} onHover={onHover} xl/>
        ))}
      </div>
    </div>
  );
}

function Player({ item, kind, profile, onClose }) {
  const videoRef = useRef(null);
  const containerRef = useRef(null);
  const [err, setErr] = useState("");
  const [loading, setLoading] = useState(true);
  const [currentProgram, setCurrentProgram] = useState(null);
  const [showProgram, setShowProgram] = useState(false);
  const [volume, setVolume] = useState(() => {
    const v = parseFloat(localStorage.getItem("gv") || "1");
    return isNaN(v) ? 1 : v;
  });
  const [muted, setMuted] = useState(false);

  useEffect(() => {
    if (kind !== "live" || !item.stream_id) return;
    let cancelled = false;
    (async () => {
      try {
        const data = await api.shortEpg(profile, item.stream_id, 4);
        const list = Array.isArray(data) ? data : (data && Array.isArray(data.epg_listings) ? data.epg_listings : []);
        const now = Date.now() / 1000;
        const cur = list.find(e => {
          const s = parseInt(e.start_timestamp || 0), t = parseInt(e.stop_timestamp || 0);
          return s <= now && now < t;
        }) || list[0];
        if (cancelled || !cur) return;
        setCurrentProgram({
          title: decodeB64(cur.title) || "",
          start: fmtTime(cur.start_timestamp),
          end: fmtTime(cur.stop_timestamp),
        });
        setShowProgram(true);
        setTimeout(() => !cancelled && setShowProgram(false), 6000);
      } catch (_) {}
    })();
    return () => { cancelled = true; };
  }, [item, kind, profile]);

  useEffect(() => {
    let mp, hlsInst;
    (async () => {
      setErr(""); setLoading(true);
      const streamId = item.stream_id || item.id || item.series_id;
      const isLive = kind === "live";
      const ext = isLive ? "ts" : (item.container_extension || "mp4");
      const url = api.streamUrl(profile, { stream_id: streamId, kind: kind==="series"?"series":isLive?"live":"movie", ext });
      const v = videoRef.current;
      if (!v) return;
      try {
        if (isLive && mpegts && mpegts.isSupported && mpegts.isSupported()) {
          mp = mpegts.createPlayer(
            { type: "mpegts", isLive: true, url },
            {
              enableStashBuffer: true,
              stashInitialSize: 1024,
              lazyLoad: false,
              lazyLoadMaxDuration: 3 * 60,
              autoCleanupSourceBuffer: true,
              autoCleanupMaxBackwardDuration: 30,
              autoCleanupMinBackwardDuration: 15,
              seekType: "range",
            }
          );
          mp.on(mpegts.Events.ERROR, (type, detail) => {
            setErr(`Error de reproducción: ${type} ${detail}`);
          });
          mp.attachMediaElement(v);
          mp.load();
          try { await mp.play(); setLoading(false); } catch (e) { setErr("No se pudo iniciar: " + e.message); setLoading(false); }
        } else if (ext === "m3u8" && Hls.isSupported()) {
          hlsInst = new Hls();
          hlsInst.loadSource(url);
          hlsInst.attachMedia(v);
          v.play().catch(()=>{}); setLoading(false);
        } else {
          v.src = url;
          try { await v.play(); } catch (e) { /* user gesture may be needed */ }
          setLoading(false);
        }
      } catch (e) {
        setErr("Error: " + e.message); setLoading(false);
      }
    })();
    return () => { try { if (mp) mp.destroy(); } catch (_) {} try { if (hlsInst) hlsInst.destroy(); } catch (_) {} };
  }, [item, kind, profile]);

  const toggleFs = () => {
    const el = containerRef.current;
    if (!document.fullscreenElement) el && el.requestFullscreen && el.requestFullscreen().catch(()=>{});
    else document.exitFullscreen && document.exitFullscreen();
  };

  useEffect(() => {
    const v = videoRef.current;
    if (!v) return;
    v.volume = volume;
    v.muted = muted;
    localStorage.setItem("gv", String(volume));
  }, [volume, muted]);

  useEffect(() => {
    const onKey = (e) => {
      if (e.key === "ArrowUp") { e.preventDefault(); setVolume(v => Math.min(1, +(v + 0.05).toFixed(2))); setMuted(false); }
      else if (e.key === "ArrowDown") { e.preventDefault(); setVolume(v => Math.max(0, +(v - 0.05).toFixed(2))); }
      else if (e.key === "m" || e.key === "M") { setMuted(m => !m); }
      else if (e.key === "f" || e.key === "F") { toggleFs(); }
      else if (e.key === "Escape") { if (!document.fullscreenElement) onClose(); }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [onClose]);

  return (
    <div ref={containerRef} className="fixed inset-0 z-[100] bg-black" data-testid="player-screen">
      <button onClick={onClose} data-testid="close-player-btn" className="absolute top-6 right-6 z-10 w-12 h-12 rounded-full bg-black/60 hover:bg-black/80 flex items-center justify-center text-white transition-colors" title="Cerrar (Esc)"><X size={22}/></button>
      <button onClick={toggleFs} data-testid="fullscreen-btn" className="absolute top-6 right-20 z-10 w-12 h-12 rounded-full bg-black/60 hover:bg-black/80 flex items-center justify-center text-white transition-colors" title="Pantalla completa (F / doble clic)"><Maximize2 size={20}/></button>
      <div className="absolute top-6 left-6 z-10 text-white text-xl font-medium max-w-[70%] truncate">{item.name || item.title}</div>
      <video
        ref={videoRef}
        controls
        autoPlay
        playsInline
        onDoubleClick={(e)=>{ e.preventDefault(); toggleFs(); }}
        className="w-full h-full object-contain bg-black"
        data-testid="video-player"
      />

      {/* Custom volume slider (bottom-right) */}
      <div className="absolute bottom-6 right-6 z-10 flex items-center gap-3 px-4 py-2.5 rounded-full bg-black/70 backdrop-blur border border-white/10" data-testid="volume-panel">
        <button onClick={()=>setMuted(m=>!m)} data-testid="mute-btn" className="text-white hover:text-red-400 transition-colors" title="Silenciar (M)">
          {muted || volume === 0 ? <VolumeX size={20}/> : <Volume2 size={20}/>}
        </button>
        <input
          type="range"
          min="0"
          max="1"
          step="0.02"
          value={muted ? 0 : volume}
          onChange={e=>{ setMuted(false); setVolume(parseFloat(e.target.value)); }}
          data-testid="volume-slider"
          className="w-32 accent-red-600 cursor-pointer"
        />
        <span className="text-xs text-neutral-400 w-8 text-right tabular-nums">{Math.round((muted?0:volume)*100)}%</span>
      </div>

      {loading && !err && <div className="absolute inset-0 flex items-center justify-center pointer-events-none text-neutral-400" data-testid="player-loading">Cargando stream...</div>}
      {err && <div className="absolute bottom-24 left-1/2 -translate-x-1/2 text-red-400 bg-black/85 border border-red-500/30 px-5 py-3 rounded-lg max-w-lg text-center text-sm" data-testid="player-error">{err}</div>}
      {currentProgram && showProgram && (
        <div className={"absolute bottom-24 left-6 z-10 max-w-lg px-5 py-3 rounded-xl bg-black/85 backdrop-blur border border-white/10 shadow-2xl transition-opacity duration-500 " + (showProgram ? "opacity-100" : "opacity-0")} data-testid="current-program-toast">
          <div className="text-[10px] uppercase tracking-widest text-red-500 font-medium mb-1">Ahora en emisión</div>
          <div className="text-white font-medium text-base truncate">{currentProgram.title}</div>
          {(currentProgram.start || currentProgram.end) && (
            <div className="text-neutral-400 text-xs mt-0.5">{currentProgram.start} → {currentProgram.end}</div>
          )}
        </div>
      )}
    </div>
  );
}

function SeriesDetail({ series, profile, onClose, onPlay }) {
  const [info, setInfo] = useState(null);
  const [season, setSeason] = useState(null);
  const [loading, setLoading] = useState(true);
  const [err, setErr] = useState("");
  useEffect(() => {
    (async () => {
      setLoading(true); setErr("");
      try {
        const data = await api.seriesInfo(profile, series.series_id);
        setInfo(data);
        const eps = data && data.episodes ? data.episodes : {};
        const keys = Object.keys(eps).sort((a,b)=>parseInt(a)-parseInt(b));
        if (keys.length) setSeason(keys[0]);
      } catch(e) { setErr("No se pudo cargar la serie"); }
      setLoading(false);
    })();
  }, [series, profile]);

  const seasons = info && info.episodes ? Object.keys(info.episodes).sort((a,b)=>parseInt(a)-parseInt(b)) : [];
  const episodes = info && season && info.episodes ? (info.episodes[season] || []) : [];
  const meta = info && info.info ? info.info : {};
  const cover = api.proxyImg(meta.cover || series.cover) || IMG_FB;

  return (
    <div className="fixed inset-0 z-[90] bg-[#050505] overflow-y-auto" data-testid="series-detail">
      <button onClick={onClose} data-testid="close-series-btn" className="fixed top-6 right-6 z-10 w-11 h-11 rounded-full bg-black/70 hover:bg-black/90 flex items-center justify-center text-white border border-white/10"><X size={20}/></button>
      <div className="relative h-[45vh]">
        <img src={cover} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="absolute inset-0 w-full h-full object-cover" alt=""/>
        <div className="absolute inset-0 bg-gradient-to-r from-black/90 via-black/50 to-transparent"/>
        <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-transparent to-transparent"/>
        <div className="absolute bottom-6 left-8 max-w-2xl">
          <h1 className="text-4xl font-medium tracking-tight mb-2" style={{fontFamily:"'Outfit',sans-serif"}}>{series.name}</h1>
          <div className="text-sm text-neutral-400 flex flex-wrap gap-3">
            {meta.releaseDate && <span>{meta.releaseDate.slice(0,4)}</span>}
            {meta.rating && <span className="text-amber-400">★ {meta.rating}</span>}
            {meta.genre && <span>{meta.genre}</span>}
          </div>
          {meta.plot && <p className="mt-3 text-neutral-300 text-sm max-w-xl line-clamp-3">{meta.plot}</p>}
        </div>
      </div>

      <div className="px-8 pb-16 -mt-4">
        {loading && <div className="text-neutral-500 py-10">Cargando temporadas...</div>}
        {err && <div className="text-red-400 py-10">{err}</div>}
        {!loading && !err && seasons.length === 0 && <div className="text-neutral-500 py-10">Esta serie no tiene episodios disponibles.</div>}
        {seasons.length > 0 && (
          <>
            <div className="flex gap-2 overflow-x-auto scrollbar-hide mb-6 pb-2">
              {seasons.map(s => (
                <button key={s} onClick={()=>setSeason(s)} data-testid={`season-${s}`} className={"shrink-0 px-4 py-2 rounded-full text-sm transition-all " + (season===s?"bg-red-600 text-white":"bg-white/5 text-neutral-400 hover:bg-white/10 hover:text-white")}>
                  Temporada {s}
                </button>
              ))}
            </div>
            <div className="space-y-2">
              {episodes.map((ep, i) => {
                const epCover = api.proxyImg(ep.info?.movie_image || ep.info?.cover_big) || cover;
                return (
                  <button key={i} onClick={()=>onPlay(ep, "series")} data-testid={`ep-${ep.id}`} className="w-full flex items-center gap-4 p-3 rounded-lg text-left hover:bg-white/5 transition-colors group border border-white/5">
                    <div className="w-32 h-20 rounded overflow-hidden bg-neutral-900 flex-shrink-0">
                      <img src={epCover} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="w-full h-full object-cover" loading="lazy" alt=""/>
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="text-white font-medium truncate">{ep.episode_num}. {ep.title || `Episodio ${ep.episode_num}`}</div>
                      {ep.info?.plot && <div className="text-xs text-neutral-500 line-clamp-2 mt-1">{ep.info.plot}</div>}
                    </div>
                    <div className="w-10 h-10 rounded-full bg-white/5 group-hover:bg-red-600 flex items-center justify-center transition-colors">
                      <Play size={16} className="text-white" fill="white"/>
                    </div>
                  </button>
                );
              })}
            </div>
          </>
        )}
      </div>
    </div>
  );
}

function MovieDetail({ movie, profile, onClose, onPlay }) {
  const [info, setInfo] = useState(null);
  useEffect(() => {
    (async () => {
      try {
        const data = IS_ELECTRON
          ? await api.vodStreams(profile).then(()=>null).catch(()=>null)
          : null;
        // richer info requires extra endpoint; skip if fails
        setInfo(data);
      } catch(_) {}
    })();
  }, [movie, profile]);
  const cover = api.proxyImg(movie.stream_icon || movie.cover) || IMG_FB;
  const meta = movie || {};
  return (
    <div className="fixed inset-0 z-[95] bg-black/95 backdrop-blur-xl overflow-y-auto" data-testid="movie-detail" onClick={onClose}>
      <div className="min-h-screen flex items-center justify-center p-8" onClick={e=>e.stopPropagation()}>
        <div className="relative w-full max-w-5xl bg-[#0a0a0a] rounded-2xl overflow-hidden border border-white/10 shadow-2xl">
          <button onClick={onClose} data-testid="close-movie-btn" className="absolute top-4 right-4 z-10 w-10 h-10 rounded-full bg-black/70 hover:bg-black/90 flex items-center justify-center text-white border border-white/10"><X size={18}/></button>
          <div className="grid md:grid-cols-[300px_1fr] gap-0">
            <div className="relative aspect-[2/3] overflow-hidden bg-neutral-900">
              <img src={cover} onError={e=>{if(e.target.src!==IMG_FB) e.target.src=IMG_FB;}} className="absolute inset-0 w-full h-full object-cover animate-slow-zoom" alt=""/>
            </div>
            <div className="p-8 flex flex-col">
              <h1 className="text-3xl font-medium tracking-tight mb-3" style={{fontFamily:"'Outfit',sans-serif"}}>{meta.name}</h1>
              <div className="text-sm text-neutral-500 mb-6">Película</div>
              <button onClick={()=>onPlay(movie, "movie")} data-testid="detail-play-btn" className="self-start flex items-center gap-2 bg-red-600 hover:bg-red-500 text-white px-8 py-3 rounded-full font-medium transition-colors mb-6">
                <Play size={18} fill="white"/>Reproducir
              </button>
              <p className="text-neutral-400 text-sm">Pulsa reproducir para ver la película. Se abrirá el reproductor en pantalla completa. Doble clic para alternar pantalla completa.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

function decodeB64(s) {
  if (!s) return "";
  try { return decodeURIComponent(escape(atob(s))); } catch (_) { try { return atob(s); } catch (_) { return s; } }
}

function fmtTime(ts) {
  if (!ts) return "";
  const d = typeof ts === "number" ? new Date(ts * 1000) : new Date(String(ts).replace(" ", "T"));
  if (isNaN(d.getTime())) return "";
  return d.toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" });
}

function LivePreview({ channel, profile, fsSignal, onClose, onFullscreen }) {
  const videoRef = useRef(null);
  const containerRef = useRef(null);
  const mpRef = useRef(null);
  const [err, setErr] = useState("");
  const [epg, setEpg] = useState([]);
  const [epgLoading, setEpgLoading] = useState(false);
  const [currentTitle, setCurrentTitle] = useState("");
  const [showTitle, setShowTitle] = useState(false);
  const [paused, setPaused] = useState(false); // when true, tear down mpegts to release audio

  const teardown = () => {
    const mp = mpRef.current;
    if (mp) { try { mp.pause && mp.pause(); } catch (_) {} try { mp.unload && mp.unload(); } catch (_) {} try { mp.detachMediaElement && mp.detachMediaElement(); } catch (_) {} try { mp.destroy && mp.destroy(); } catch (_) {} mpRef.current = null; }
    const v = videoRef.current;
    if (v) { try { v.pause(); v.muted = true; v.removeAttribute("src"); v.load(); } catch (_) {} }
  };

  // When channel changes (user selects another), always resume preview
  useEffect(() => { setPaused(false); }, [channel]);

  useEffect(() => {
    setErr("");
    if (!channel || paused) { teardown(); return; }
    const url = api.streamUrl(profile, { stream_id: channel.stream_id, kind: "live", ext: "ts" });
    const v = videoRef.current;
    if (!v) return;
    v.muted = false; v.volume = 1;
    try {
      if (mpegts && mpegts.isSupported && mpegts.isSupported()) {
        const mp = mpegts.createPlayer(
          { type: "mpegts", isLive: true, url },
          { enableStashBuffer: true, stashInitialSize: 1024, enableWorker: false, fixAudioTimestampGap: true, lazyLoad: false, autoCleanupSourceBuffer: true }
        );
        mp.on(mpegts.Events.ERROR, (type, detail) => setErr(`${type}: ${detail}`));
        mp.attachMediaElement(v);
        mp.load();
        mp.play().catch(e => setErr(e.message));
        mpRef.current = mp;
      } else {
        v.src = url;
        v.play().catch(()=>{});
      }
    } catch (e) { setErr(e.message); }
    return teardown;
  }, [channel, profile, paused]);

  useEffect(() => {
    if (!channel) { setEpg([]); return; }
    let cancelled = false;
    (async () => {
      setEpgLoading(true);
      try {
        const data = await api.shortEpg(profile, channel.stream_id, 8);
        if (cancelled) return;
        const list = Array.isArray(data) ? data : (data && Array.isArray(data.epg_listings) ? data.epg_listings : []);
        setEpg(list);
      } catch (_) { if (!cancelled) setEpg([]); }
      setEpgLoading(false);
    })();
    return () => { cancelled = true; };
  }, [channel, profile]);

  // Resume the preview when the external mpv fullscreen player closes
  useEffect(() => {
    if (!window.electronAPI || !window.electronAPI.onMpvExited) return;
    const unsub = window.electronAPI.onMpvExited(() => setPaused(false));
    return () => { if (unsub) unsub(); };
  }, []);

  const goFullscreen = () => {
    // Tear down mpegts synchronously so audio doesn't overlap with mpv
    teardown();
    setPaused(true);
    if (onFullscreen) { setTimeout(() => onFullscreen(), 100); return; }
    const el = containerRef.current;
    if (!el) return;
    if (!document.fullscreenElement) el.requestFullscreen && el.requestFullscreen().catch(()=>{});
    else document.exitFullscreen && document.exitFullscreen();
  };

  // Auto-fullscreen when fsSignal changes (triggered by double-click on channel)
  useEffect(() => {
    if (!fsSignal || !channel) return;
    teardown();
    setPaused(true);
    if (onFullscreen) { setTimeout(() => onFullscreen(), 100); return; }
    const t = setTimeout(() => {
      const el = containerRef.current;
      if (el && !document.fullscreenElement) el.requestFullscreen && el.requestFullscreen().catch(()=>{});
    }, 400);
    return () => clearTimeout(t);
  }, [fsSignal, channel, onFullscreen]);

  // Show current program name briefly whenever entering fullscreen or changing channel
  useEffect(() => {
    const now = Date.now() / 1000;
    const current = epg.find(e => {
      const s = parseInt(e.start_timestamp || 0), t = parseInt(e.stop_timestamp || 0);
      return s <= now && now < t;
    });
    if (current) {
      setCurrentTitle(decodeB64(current.title) || "");
      setShowTitle(true);
      const timer = setTimeout(() => setShowTitle(false), 5000);
      return () => clearTimeout(timer);
    }
  }, [epg, channel]);

  if (!channel) {
    return (
      <div className="rounded-xl bg-neutral-900/50 border border-white/5 aspect-video flex items-center justify-center text-neutral-600 text-sm" data-testid="live-preview-empty">
        Selecciona un canal para previsualizar
      </div>
    );
  }

  const now = Date.now() / 1000;
  const current = epg.find(e => {
    const s = parseInt(e.start_timestamp || 0), t = parseInt(e.stop_timestamp || 0);
    return s <= now && now < t;
  }) || epg[0];

  return (
    <div className="flex flex-col gap-3">
      <div ref={containerRef} className="relative rounded-xl overflow-hidden bg-black border border-white/10" data-testid="live-preview">
        <video
          ref={videoRef}
          controls
          autoPlay
          playsInline
          onDoubleClick={(e)=>{ e.preventDefault(); goFullscreen(); }}
          className="w-full aspect-video object-contain bg-black cursor-pointer"
          data-testid="preview-video"
        />
        {showTitle && currentTitle && (
          <div className="absolute top-3 left-3 px-3 py-1.5 rounded-lg bg-black/80 backdrop-blur text-white text-xs font-medium border border-white/10 pointer-events-none animate-fade-out">
            <span className="text-red-400 mr-2">EN VIVO</span>{currentTitle}
          </div>
        )}
        <div className="p-3 flex items-center justify-between bg-neutral-950/80 backdrop-blur">
          <div className="text-sm text-white truncate mr-3">{channel.name}</div>
          <div className="flex items-center gap-2 shrink-0">
            <button onClick={goFullscreen} data-testid="preview-fs-btn" className="px-3 py-1.5 rounded-full bg-red-600 hover:bg-red-500 text-white text-xs font-medium flex items-center gap-1.5">
              <Maximize2 size={12}/>Pantalla completa
            </button>
            <button onClick={onClose} data-testid="preview-close-btn" className="w-7 h-7 rounded-full bg-white/10 hover:bg-white/20 text-white flex items-center justify-center"><X size={13}/></button>
          </div>
        </div>
        {err && <div className="absolute top-2 left-2 text-red-400 bg-black/80 px-2 py-1 rounded text-xs">{err}</div>}
      </div>

      <div className="rounded-xl bg-neutral-900/40 border border-white/5 p-3" data-testid="epg-panel">
        <h3 className="text-xs uppercase tracking-widest text-neutral-500 mb-2 px-1">Guía de programación</h3>
        {epgLoading && <div className="text-neutral-500 text-xs p-2">Cargando EPG...</div>}
        {!epgLoading && epg.length === 0 && <div className="text-neutral-600 text-xs p-2">Sin información de programación</div>}
        {!epgLoading && epg.length > 0 && (
          <div className="max-h-[35vh] overflow-y-auto scrollbar-thin space-y-1 pr-1">
            {epg.map((e, i) => {
              const isCurrent = current && (current.id === e.id || (current.start_timestamp === e.start_timestamp));
              return (
                <div key={i} data-testid={`epg-${i}`} className={"px-3 py-2 rounded-lg text-xs " + (isCurrent ? "bg-red-600/15 border border-red-600/30" : "hover:bg-white/5")}>
                  <div className="flex items-baseline gap-2 mb-0.5">
                    <span className={"font-medium " + (isCurrent ? "text-red-400" : "text-neutral-400")}>{fmtTime(e.start_timestamp) || fmtTime(e.start)}</span>
                    <span className="text-neutral-600">→</span>
                    <span className="text-neutral-500">{fmtTime(e.stop_timestamp) || fmtTime(e.end)}</span>
                    {isCurrent && <span className="ml-auto text-[10px] uppercase tracking-widest text-red-500">Ahora</span>}
                  </div>
                  <div className={isCurrent ? "text-white font-medium" : "text-neutral-300"}>{decodeB64(e.title) || "Programa"}</div>
                  {isCurrent && e.description && <div className="text-neutral-500 text-[11px] mt-1 line-clamp-2">{decodeB64(e.description)}</div>}
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}

function Main({ profile, onLogout, onSwitch, onPlay, onOpenSeries, onOpenMovie }) {
  const [tab, setTab] = useState("home");
  const [liveChannel, setLiveChannel] = useState(null);
  const [fsSignal, setFsSignal] = useState(0);
  const [hoverBg, setHoverBg] = useState(null);

  const stopInAppMedia = () => {
    try {
      document.querySelectorAll('video, audio').forEach(v => {
        try { v.pause(); v.muted = true; v.src = ''; v.load && v.load(); } catch (_) {}
      });
      window.dispatchEvent(new Event('gadir:media:stop'));
    } catch (_) {}
  };

  const playLiveInMpv = async (item, fullscreen) => {
    const url = api.streamUrl(profile, { stream_id: item.stream_id, kind: "live", ext: "ts" });
    stopInAppMedia();
    if (window.electronAPI && window.electronAPI.showPlayer) {
      const res = await window.electronAPI.showPlayer({ url, name: item.name });
      if (!res || !res.ok) alert("No se pudo lanzar el reproductor: " + (res && res.error));
    } else if (window.electronAPI && window.electronAPI.playInMpv) {
      const res = await window.electronAPI.playInMpv({ url, name: item.name, fullscreen });
      if (!res || !res.ok) alert("No se pudo lanzar mpv: " + (res && res.error));
    } else {
      onPlay(item, "live");
    }
  };

  const handleSelect = (item, kind) => {
    if (kind === "series") onOpenSeries(item);
    else if (kind === "movie") onOpenMovie(item);
    else if (kind === "live_fs") { setLiveChannel(item); playLiveInMpv(item, true); }
    else if (kind === "live") setLiveChannel(item);
  };
  useEffect(() => { if (tab !== "live") setLiveChannel(null); }, [tab]);

  return (
    <div className="min-h-screen bg-[#050505] text-white relative overflow-hidden">
      {/* Ambient background from hovered card */}
      {hoverBg && (
        <div className="fixed inset-0 pointer-events-none transition-opacity duration-500 opacity-40" style={{zIndex: 0}}>
          <img src={hoverBg} alt="" className="w-full h-full object-cover blur-3xl scale-110"/>
          <div className="absolute inset-0 bg-black/50"/>
        </div>
      )}

      {/* Top-left logo (all screens except player) */}
      <div className="fixed top-4 left-6 z-30 flex items-center gap-3">
        <img src="./gadir-logo.png" alt="GadirTV" className="h-10 w-auto drop-shadow-lg" onError={e=>e.target.style.display='none'}/>
      </div>

      <div className="fixed top-4 right-6 z-30 flex items-center gap-3">
        <button onClick={onSwitch} data-testid="switch-profile-btn" title="Cambiar perfil" className="w-10 h-10 rounded-lg bg-gradient-to-br from-red-600 to-red-900 flex items-center justify-center font-medium text-white shadow-lg">{profile.name.charAt(0).toUpperCase()}</button>
        <button onClick={onLogout} data-testid="logout-btn" title="Cerrar sesión" className="w-10 h-10 rounded-lg bg-black/60 hover:bg-black/80 flex items-center justify-center text-neutral-400 hover:text-white backdrop-blur"><LogOut size={18}/></button>
      </div>

      <div className="relative" style={{zIndex: 1}}>
        {tab==="home" && <HomeTab profile={profile} onSelect={handleSelect} onHover={setHoverBg}/>}
        {tab==="live" && <CategorySection kind="live" profile={profile} onSelect={handleSelect} onHover={setHoverBg} livePreview={<LivePreview channel={liveChannel} profile={profile} fsSignal={fsSignal} onClose={()=>setLiveChannel(null)} onFullscreen={()=>liveChannel && playLiveInMpv(liveChannel, true)}/>}/>}
        {tab==="movies" && <CategorySection kind="movie" profile={profile} onSelect={handleSelect} onHover={setHoverBg}/>}
        {tab==="series" && <CategorySection kind="series" profile={profile} onSelect={handleSelect} onHover={setHoverBg}/>}
      </div>
      <BottomNav tab={tab} setTab={setTab}/>
    </div>
  );
}

function App() {
  const [screen, setScreen] = useState("profiles");
  const [profile, setProfile] = useState(null);
  const [profileNonce, setProfileNonce] = useState(0);
  const [playing, setPlaying] = useState(null);
  const [seriesOpen, setSeriesOpen] = useState(null);
  const [movieOpen, setMovieOpen] = useState(null);
  const [switching, setSwitching] = useState(false);

  const activateProfile = async (p) => {
    setSwitching(true);
    await newSession();
    store.setActive(p);
    setProfile(p);
    setProfileNonce(n => n + 1);
    setPlaying(null); setSeriesOpen(null); setMovieOpen(null);
    setScreen("main");
    setSwitching(false);
  };

  const doSwitch = async () => {
    setSwitching(true);
    await newSession();
    setPlaying(null); setSeriesOpen(null); setMovieOpen(null);
    setScreen("profiles");
    setSwitching(false);
  };

  const doLogout = async () => {
    setSwitching(true);
    await newSession();
    store.setActive(null); setProfile(null);
    setPlaying(null); setSeriesOpen(null); setMovieOpen(null);
    setScreen("profiles");
    setSwitching(false);
  };

  const playInMpv = async (item, kind) => {
    const streamId = item.stream_id || item.id || item.series_id;
    const ext = kind === "live" ? "ts" : (item.container_extension || "mp4");
    const url = api.streamUrl(profile, { stream_id: streamId, kind, ext });
    // Stop every in-app <video>/<audio> to prevent audio mixing with mpv.
    try {
      document.querySelectorAll('video, audio').forEach(v => {
        try { v.pause(); v.muted = true; v.src = ''; v.load && v.load(); } catch (_) {}
      });
      window.dispatchEvent(new Event('gadir:media:stop'));
    } catch (_) {}
    if (window.electronAPI && window.electronAPI.showPlayer) {
      const res = await window.electronAPI.showPlayer({ url, name: item.name || item.title });
      if (!res || !res.ok) {
        alert("Error de reproductor: " + (res && res.error) + "\nUsando reproductor interno.");
        setPlaying({ item, kind });
      }
    } else if (window.electronAPI && window.electronAPI.playInMpv) {
      const res = await window.electronAPI.playInMpv({ url, name: item.name || item.title, fullscreen: true });
      if (!res || !res.ok) {
        alert("Error de mpv: " + (res && res.error) + "\nUsando reproductor interno.");
        setPlaying({ item, kind });
      }
    } else {
      setPlaying({ item, kind });
    }
  };

  useEffect(() => {
    const a = store.getActive();
    if (a) { setProfile(a); setProfileNonce(1); setScreen("main"); }
  }, []);
  return (
    <div className="App">
      <TitleBar/>
      {switching && (
        <div className="fixed inset-0 z-[300] bg-black/90 backdrop-blur flex flex-col items-center justify-center gap-4" data-testid="switching-overlay">
          <div className="w-12 h-12 rounded-full border-4 border-red-600/30 border-t-red-600 animate-spin"/>
          <div className="text-white text-lg font-medium">Cambiando de usuario…</div>
          <div className="text-neutral-500 text-sm">Cerrando conexión anterior con gadir</div>
        </div>
      )}
      {screen==="profiles" && <Profiles onSelect={activateProfile} onAdd={()=>setScreen("login")}/>}
      {screen==="login" && <Login onLogin={activateProfile} onCancel={()=>setScreen("profiles")}/>}
      {screen==="main" && profile && (
        <Main
          key={`${profile.username}-${profileNonce}`}
          profile={profile}
          onLogout={doLogout}
          onSwitch={doSwitch}
          onPlay={(i,k)=>playInMpv(i,k)}
          onOpenSeries={s=>setSeriesOpen(s)}
          onOpenMovie={m=>setMovieOpen(m)}
        />
      )}
      {movieOpen && profile && <MovieDetail movie={movieOpen} profile={profile} onClose={()=>setMovieOpen(null)} onPlay={(m,k)=>{setMovieOpen(null); playInMpv(m,k);}}/>}
      {seriesOpen && profile && <SeriesDetail series={seriesOpen} profile={profile} onClose={()=>setSeriesOpen(null)} onPlay={(ep,k)=>{setSeriesOpen(null); playInMpv(ep,k);}}/>}
      {playing && profile && <Player item={playing.item} kind={playing.kind} profile={profile} onClose={()=>setPlaying(null)}/>}
    </div>
  );
}
export default App;
