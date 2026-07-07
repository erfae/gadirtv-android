import React, { useState, useEffect, useRef } from "react";
import axios from "axios";
import mpegts from "mpegts.js";
import Hls from "hls.js";
import { Play, Search, Tv, Film, Clapperboard, LogOut, Plus, X, ChevronLeft, Home as HomeIcon, ChevronRight, Trash2, Settings } from "lucide-react";
import "./App.css";

const API = `${process.env.REACT_APP_BACKEND_URL}/api`;
const IMG_FB = "https://images.unsplash.com/photo-1489599328109-c6b8b7cfd3aa?w=400";
const store = {
  getProfiles: () => JSON.parse(localStorage.getItem("gp") || "[]"),
  saveProfiles: (p) => localStorage.setItem("gp", JSON.stringify(p)),
  getActive: () => JSON.parse(localStorage.getItem("ga") || "null"),
  setActive: (p) => localStorage.setItem("ga", JSON.stringify(p)),
};

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
        <h1 className="text-6xl font-medium tracking-tight text-white mb-4" style={{fontFamily:"'Outfit',sans-serif"}}>Gadir<span className="text-red-600">TV</span></h1>
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
  const [loading, setLoading] = useState(false), [err, setErr] = useState("");
  const submit = async (e) => {
    e.preventDefault(); setErr(""); setLoading(true);
    try {
      const { data } = await axios.post(`${API}/login`, { username: u, password: p });
      if (!data.ok) { setErr(data.error || "Credenciales inválidas"); setLoading(false); return; }
      const prof = { name: name || u, username: u, password: p };
      const ps = store.getProfiles();
      const i = ps.findIndex(x => x.username === u);
      if (i >= 0) ps[i] = prof; else ps.push(prof);
      store.saveProfiles(ps); onLogin(prof);
    } catch (e) { setErr("Error de conexión"); setLoading(false); }
  };
  return (
    <div className="min-h-screen flex items-center justify-center bg-[#050505]" style={{backgroundImage:"linear-gradient(rgba(0,0,0,0.75),rgba(5,5,5,1)),url(https://images.unsplash.com/photo-1489599328109-c6b8b7cfd3aa?w=1920)",backgroundSize:"cover"}} data-testid="login-screen">
      <div className="w-full max-w-md p-10 rounded-3xl backdrop-blur-2xl bg-black/60 border border-white/10">
        <button onClick={onCancel} className="text-neutral-500 hover:text-white mb-6 flex items-center gap-2" data-testid="back-btn"><ChevronLeft size={20}/>Volver</button>
        <h1 className="text-4xl font-medium text-white mb-8" style={{fontFamily:"'Outfit',sans-serif"}}>Gadir<span className="text-red-600">TV</span></h1>
        <form onSubmit={submit} className="space-y-4">
          <input placeholder="Nombre perfil (opcional)" value={name} onChange={e=>setName(e.target.value)} className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white placeholder:text-neutral-500 focus:outline-none focus:border-red-600" data-testid="profile-name-input"/>
          <input placeholder="Usuario" value={u} onChange={e=>setU(e.target.value)} required className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white focus:outline-none focus:border-red-600" data-testid="username-input"/>
          <input type="password" placeholder="Contraseña" value={p} onChange={e=>setP(e.target.value)} required className="w-full px-5 py-4 rounded-full bg-white/5 border border-white/10 text-white focus:outline-none focus:border-red-600" data-testid="password-input"/>
          <div className="text-xs text-neutral-500 pl-5">Servidor: <span className="text-neutral-400">gadir.co:80</span></div>
          {err && <div className="text-red-500 text-sm text-center" data-testid="error-msg">{err}</div>}
          <button type="submit" disabled={loading} className="w-full py-4 rounded-full bg-red-600 hover:bg-red-500 text-white font-medium transition-colors disabled:opacity-50" data-testid="login-btn">{loading?"Conectando...":"Entrar"}</button>
        </form>
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
            <button key={it.id} onClick={()=>setTab(it.id)} data-testid={`nav-${it.id}`} className={"flex flex-col items-center gap-1.5 px-8 py-3 rounded-2xl transition-all duration-200 " + (active?"bg-red-600/15 text-red-500 scale-105":"text-neutral-400 hover:text-white hover:bg-white/5")}>
              <I size={30} strokeWidth={active?2.5:2}/>
              <span className="text-sm font-medium">{it.label}</span>
            </button>
          );
        })}
      </div>
    </nav>
  );
}

function ItemCard({ item, onSelect, big }) {
  return (
    <button onClick={onSelect} data-testid={`card-${item.stream_id||item.series_id}`} className={"shrink-0 group " + (big?"w-52":"w-36 md:w-40")}>
      <div className={"aspect-[2/3] rounded-md overflow-hidden bg-neutral-900 group-hover:ring-2 ring-red-600 group-hover:scale-105 transition-all duration-300 shadow-xl"}>
        <img src={item.stream_icon || item.cover || IMG_FB} onError={e=>e.target.src=IMG_FB} className="w-full h-full object-cover" loading="lazy" alt=""/>
      </div>
      <p className="text-sm text-neutral-300 mt-2 truncate group-hover:text-white">{item.name}</p>
    </button>
  );
}

function Rail({ title, items, onSelect, big }) {
  if (!items || !items.length) return null;
  return (
    <section className="mb-10">
      <h2 className="text-xl md:text-2xl font-medium text-white mb-4 tracking-tight px-8" style={{fontFamily:"'Outfit',sans-serif"}}>{title}</h2>
      <div className="flex gap-4 overflow-x-auto scrollbar-hide px-8 pb-4">
        {items.slice(0, 30).map((it, i) => <ItemCard key={i} item={it} big={big} onSelect={()=>onSelect(it)}/>)}
      </div>
    </section>
  );
}

function CategorySection({ kind, profile, onSelect }) {
  const [cats, setCats] = useState([]);
  const [byCat, setByCat] = useState({});
  const [active, setActive] = useState(null);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");

  useEffect(() => {
    (async () => {
      setLoading(true); setActive(null); setSearch(""); setByCat({});
      const p = { username: profile.username, password: profile.password };
      try {
        const catUrl = kind==="live"?"live/categories":kind==="movie"?"vod/categories":"series/categories";
        const { data } = await axios.get(`${API}/${catUrl}`, { params: p });
        const c = Array.isArray(data) ? data : [];
        c.sort((a,b)=>String(a.category_name||"").localeCompare(String(b.category_name||"")));
        setCats(c);
        if (c.length) setActive(c[0]);
      } catch(e) { console.error(e); }
      setLoading(false);
    })();
  }, [kind, profile]);

  useEffect(() => {
    if (!active || byCat[active.category_id]) return;
    (async () => {
      const p = { username: profile.username, password: profile.password, category_id: active.category_id };
      const url = kind==="live"?"live/streams":kind==="movie"?"vod/streams":"series/list";
      try {
        const { data } = await axios.get(`${API}/${url}`, { params: p });
        setByCat(prev => ({ ...prev, [active.category_id]: Array.isArray(data)?data:[] }));
      } catch(e) { console.error(e); }
    })();
  }, [active, kind, profile]);

  const items = active ? (byCat[active.category_id]||[]) : [];
  const q = search.toLowerCase();
  const filtered = q ? items.filter(x => (x.name||"").toLowerCase().includes(q)) : items;

  return (
    <div className="pt-24 pb-32 px-8" data-testid={`section-${kind}`}>
      <div className="flex items-center justify-between mb-6">
        <h1 className="text-3xl font-medium tracking-tight" style={{fontFamily:"'Outfit',sans-serif"}}>{kind==="live"?"TV en Vivo":kind==="movie"?"Películas":"Series"}</h1>
        <div className="relative">
          <Search size={16} className="absolute left-3 top-1/2 -translate-y-1/2 text-neutral-500"/>
          <input placeholder="Buscar..." value={search} onChange={e=>setSearch(e.target.value)} data-testid={`search-${kind}`} className="pl-9 pr-3 py-2 rounded-full bg-white/5 border border-white/10 text-sm focus:outline-none focus:border-red-600 w-64"/>
        </div>
      </div>
      {loading && <div className="text-neutral-500 py-20" data-testid="loading">Cargando...</div>}
      {!loading && (
        <div className="grid grid-cols-[240px_1fr] gap-8">
          <aside className="max-h-[calc(100vh-220px)] overflow-y-auto pr-2 scrollbar-thin">
            <h3 className="text-xs uppercase tracking-widest text-neutral-500 mb-3">Grupos ({cats.length})</h3>
            <div className="space-y-1">
              {cats.map(c => (
                <button key={c.category_id} onClick={()=>setActive(c)} data-testid={`cat-${c.category_id}`} className={"w-full text-left px-4 py-2.5 rounded-lg text-sm transition-all flex items-center justify-between group " + (active?.category_id===c.category_id?"bg-red-600 text-white":"text-neutral-400 hover:bg-white/5 hover:text-white")}>
                  <span className="truncate">{c.category_name}</span>
                  <ChevronRight size={14} className="opacity-0 group-hover:opacity-60"/>
                </button>
              ))}
            </div>
          </aside>
          <main>
            {active && <h2 className="text-lg text-neutral-400 mb-4">{active.category_name} <span className="text-neutral-600">· {filtered.length}</span></h2>}
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
              {filtered.map((it, i) => <ItemCard key={i} item={it} onSelect={()=>onSelect(it, kind)}/>)}
            </div>
            {!filtered.length && active && <p className="text-neutral-500">No hay contenido en este grupo</p>}
          </main>
        </div>
      )}
    </div>
  );
}

function HomeTab({ profile, onSelect }) {
  const [recentMovies, setRM] = useState([]);
  const [recentSeries, setRS] = useState([]);
  const [heroIdx, setHeroIdx] = useState(0);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    (async () => {
      setLoading(true);
      const p = { username: profile.username, password: profile.password };
      try {
        const [m, s] = await Promise.all([
          axios.get(`${API}/vod/streams`, { params: p }).then(r=>r.data),
          axios.get(`${API}/series/list`, { params: p }).then(r=>r.data),
        ]);
        const sortByAdded = arr => Array.isArray(arr) ? [...arr].sort((a,b)=>(parseInt(b.added||b.last_modified||0))-(parseInt(a.added||a.last_modified||0))) : [];
        setRM(sortByAdded(m).slice(0, 40));
        setRS(sortByAdded(s).slice(0, 40));
      } catch(e) { console.error(e); }
      setLoading(false);
    })();
  }, [profile]);

  const heroList = [...recentMovies.slice(0,5), ...recentSeries.slice(0,5)];
  useEffect(() => {
    if (!heroList.length) return;
    const t = setInterval(()=>setHeroIdx(i=>(i+1)%heroList.length), 6000);
    return ()=>clearInterval(t);
  }, [heroList.length]);
  const hero = heroList[heroIdx];

  return (
    <div className="pb-32" data-testid="home-tab">
      {hero && (
        <div className="relative h-[65vh]">
          <img src={hero.stream_icon||hero.cover||IMG_FB} onError={e=>e.target.src=IMG_FB} className="absolute inset-0 w-full h-full object-cover" alt=""/>
          <div className="absolute inset-0 bg-gradient-to-r from-black/95 via-black/40 to-transparent"/>
          <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-transparent to-transparent"/>
          <div className="absolute bottom-24 left-8 max-w-2xl">
            <p className="text-red-500 text-sm font-medium tracking-widest uppercase mb-3">{hero.series_id?"Serie":"Película"} · Reciente</p>
            <h1 className="text-5xl md:text-6xl font-medium tracking-tight mb-6" style={{fontFamily:"'Outfit',sans-serif"}}>{hero.name}</h1>
            <button onClick={()=>onSelect(hero, hero.series_id?"series":"movie")} data-testid="hero-play-btn" className="flex items-center gap-2 bg-white text-black px-8 py-3 rounded-full font-medium hover:bg-neutral-200 transition-colors">
              <Play size={18} fill="black"/>Reproducir
            </button>
          </div>
        </div>
      )}
      <div className={hero?"-mt-24 relative z-10":"pt-24"}>
        {loading && <div className="text-center text-neutral-500 py-20" data-testid="loading-home">Cargando...</div>}
        <Rail title="Películas recientes" items={recentMovies} onSelect={i=>onSelect(i,"movie")} big/>
        <Rail title="Series recientes" items={recentSeries} onSelect={i=>onSelect(i,"series")} big/>
      </div>
    </div>
  );
}

function Player({ item, kind, profile, onClose }) {
  const videoRef = useRef(null);
  const [err, setErr] = useState("");
  const [loading, setLoading] = useState(true);
  useEffect(() => {
    let mp, hlsInst;
    (async () => {
      setErr(""); setLoading(true);
      const streamId = item.stream_id || item.series_id;
      const isLive = kind === "live";
      const ext = isLive ? "ts" : (item.container_extension || "mp4");
      const proxied = `${API}/stream?kind=${kind==="series"?"series":isLive?"live":"movie"}&username=${encodeURIComponent(profile.username)}&password=${encodeURIComponent(profile.password)}&stream_id=${streamId}&ext=${ext}`;
      const v = videoRef.current;
      if (!v) return;
      try {
        if (isLive && mpegts && mpegts.isSupported && mpegts.isSupported()) {
          mp = mpegts.createPlayer(
            { type: "mpegts", isLive: true, url: proxied },
            { enableStashBuffer: false, liveBufferLatencyChasing: true, lazyLoad: false }
          );
          mp.on(mpegts.Events.ERROR, (type, detail, info) => {
            setErr(`Error de reproducción: ${type} ${detail}`);
          });
          mp.attachMediaElement(v);
          mp.load();
          try { await mp.play(); setLoading(false); } catch (e) { setErr("No se pudo iniciar: " + e.message); setLoading(false); }
        } else if (ext === "m3u8" && Hls.isSupported()) {
          hlsInst = new Hls();
          hlsInst.loadSource(proxied);
          hlsInst.attachMedia(v);
          v.play().catch(()=>{}); setLoading(false);
        } else {
          v.src = proxied;
          try { await v.play(); } catch(e) { /* user gesture may be needed */ }
          setLoading(false);
        }
      } catch (e) {
        setErr("Error: " + e.message); setLoading(false);
      }
    })();
    return () => { try { if (mp) mp.destroy(); } catch{} try { if (hlsInst) hlsInst.destroy(); } catch{} };
  }, [item, kind, profile]);
  return (
    <div className="fixed inset-0 z-[100] bg-black" data-testid="player-screen">
      <button onClick={onClose} data-testid="close-player-btn" className="absolute top-6 right-6 z-10 w-12 h-12 rounded-full bg-black/60 hover:bg-black/80 flex items-center justify-center text-white"><X size={24}/></button>
      <div className="absolute top-6 left-6 z-10 text-white text-xl font-medium max-w-[70%] truncate">{item.name}</div>
      <video ref={videoRef} controls autoPlay playsInline className="w-full h-full object-contain bg-black" data-testid="video-player"/>
      {loading && !err && <div className="absolute inset-0 flex items-center justify-center pointer-events-none text-neutral-400" data-testid="player-loading">Cargando stream...</div>}
      {err && <div className="absolute bottom-24 left-1/2 -translate-x-1/2 text-red-400 bg-black/85 border border-red-500/30 px-5 py-3 rounded-lg max-w-lg text-center text-sm" data-testid="player-error">{err}</div>}
    </div>
  );
}

function Main({ profile, onLogout, onSwitch, onPlay }) {
  const [tab, setTab] = useState("home");
  return (
    <div className="min-h-screen bg-[#050505] text-white">
      <div className="fixed top-4 right-6 z-30 flex items-center gap-3">
        <button onClick={onSwitch} data-testid="switch-profile-btn" className="w-10 h-10 rounded-lg bg-gradient-to-br from-red-600 to-red-900 flex items-center justify-center font-medium text-white shadow-lg">{profile.name.charAt(0).toUpperCase()}</button>
        <button onClick={onLogout} data-testid="logout-btn" className="w-10 h-10 rounded-lg bg-black/60 hover:bg-black/80 flex items-center justify-center text-neutral-400 hover:text-white backdrop-blur"><LogOut size={18}/></button>
      </div>
      {tab==="home" && <HomeTab profile={profile} onSelect={(i,k)=>onPlay(i,k)}/>}
      {tab==="live" && <CategorySection kind="live" profile={profile} onSelect={onPlay}/>}
      {tab==="movies" && <CategorySection kind="movie" profile={profile} onSelect={onPlay}/>}
      {tab==="series" && <CategorySection kind="series" profile={profile} onSelect={onPlay}/>}
      <BottomNav tab={tab} setTab={setTab}/>
    </div>
  );
}

function App() {
  const [screen, setScreen] = useState("profiles");
  const [profile, setProfile] = useState(null);
  const [playing, setPlaying] = useState(null);
  useEffect(() => {
    const a = store.getActive();
    if (a) { setProfile(a); setScreen("main"); }
  }, []);
  return (
    <div className="App">
      {screen==="profiles" && <Profiles onSelect={p=>{store.setActive(p);setProfile(p);setScreen("main");}} onAdd={()=>setScreen("login")}/>}
      {screen==="login" && <Login onLogin={p=>{store.setActive(p);setProfile(p);setScreen("main");}} onCancel={()=>setScreen("profiles")}/>}
      {screen==="main" && profile && <Main profile={profile} onLogout={()=>{store.setActive(null);setProfile(null);setScreen("profiles");}} onSwitch={()=>setScreen("profiles")} onPlay={(i,k)=>setPlaying({item:i,kind:k})}/>}
      {playing && profile && <Player item={playing.item} kind={playing.kind} profile={profile} onClose={()=>setPlaying(null)}/>}
    </div>
  );
}
export default App;
