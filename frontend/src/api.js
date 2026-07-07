// Dual-mode API layer: uses backend proxy in browser (preview), or hits
// gadir.co directly when running inside the Electron desktop app.
import axios from "axios";

export const IS_ELECTRON =
  typeof window !== "undefined" &&
  (window.location.protocol === "file:" || !!window.electronAPI);

const XTREAM_HOST = "http://gadir.co";
const PROXY = `${process.env.REACT_APP_BACKEND_URL}/api`;

async function xtreamGet(username, password, action, extra = {}) {
  const params = { username, password, ...extra };
  if (action) params.action = action;
  const { data } = await axios.get(`${XTREAM_HOST}/player_api.php`, {
    params,
    timeout: 25000,
  });
  return data;
}

export const api = {
  // Wrap an HTTP image URL with a HTTPS-friendly proxy so browsers don't
  // block it for mixed-content reasons. In Electron we don't need to.
  proxyImg(url) {
    if (!url) return "";
    if (IS_ELECTRON) return url;
    if (/^https:/i.test(url)) return url;
    return `${PROXY}/img?url=${encodeURIComponent(url)}`;
  },

  async login(username, password) {
    if (IS_ELECTRON) {
      try {
        const data = await xtreamGet(username, password);
        return {
          ok: !!(data && data.user_info && data.user_info.auth === 1),
          user_info: data && data.user_info,
          server_info: data && data.server_info,
        };
      } catch (e) {
        return { ok: false, error: e.message };
      }
    }
    const { data } = await axios.post(`${PROXY}/login`, { username, password }, { timeout: 12000 });
    return data;
  },

  async liveCategories(profile) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_live_categories")
      : (await axios.get(`${PROXY}/live/categories`, { params: profile })).data;
  },

  async liveStreams(profile, category_id) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_live_streams", { category_id })
      : (await axios.get(`${PROXY}/live/streams`, { params: { ...profile, category_id } })).data;
  },

  async vodCategories(profile) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_vod_categories")
      : (await axios.get(`${PROXY}/vod/categories`, { params: profile })).data;
  },

  async vodStreams(profile, category_id) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_vod_streams", category_id ? { category_id } : {})
      : (await axios.get(`${PROXY}/vod/streams`, { params: { ...profile, ...(category_id ? { category_id } : {}) } })).data;
  },

  async seriesCategories(profile) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_series_categories")
      : (await axios.get(`${PROXY}/series/categories`, { params: profile })).data;
  },

  async seriesList(profile, category_id) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_series", category_id ? { category_id } : {})
      : (await axios.get(`${PROXY}/series/list`, { params: { ...profile, ...(category_id ? { category_id } : {}) } })).data;
  },

  async seriesInfo(profile, series_id) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_series_info", { series_id })
      : (await axios.get(`${PROXY}/series/info`, { params: { ...profile, series_id } })).data;
  },

  async shortEpg(profile, stream_id, limit = 10) {
    return IS_ELECTRON
      ? xtreamGet(profile.username, profile.password, "get_short_epg", { stream_id, limit })
      : (await axios.get(`${PROXY}/epg/short`, { params: { ...profile, stream_id, limit } })).data;
  },

  // Returns the actual playable URL for a stream. In Electron this is
  // gadir.co direct (no CORS/Mixed-Content issues). In browser we use the
  // backend streaming proxy.
  streamUrl(profile, { stream_id, kind, ext }) {
    const u = encodeURIComponent(profile.username);
    const p = encodeURIComponent(profile.password);
    const paths = { live: "live", movie: "movie", series: "series" };
    const path = paths[kind] || "live";
    if (IS_ELECTRON) return `${XTREAM_HOST}/${path}/${u}/${p}/${stream_id}.${ext}`;
    return `${PROXY}/stream?kind=${kind}&username=${u}&password=${p}&stream_id=${stream_id}&ext=${ext}`;
  },
};
