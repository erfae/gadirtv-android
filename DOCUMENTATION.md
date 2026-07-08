# GadirTV — Documentación Técnica

**Versión:** 1.13 (definitiva)
**Plataforma:** Windows Desktop (Electron + React)
**Servidor IPTV:** `http://gadir.co:80` (Xtream Codes API)

---

## 1. Descripción general

GadirTV es un cliente IPTV de escritorio para Windows que se conecta al
servidor `gadir.co` usando la API estándar Xtream Codes (`/player_api.php`).
La aplicación reproduce TV en Vivo (streams MPEG-TS con AC3/EAC3/MPEG-2),
películas VOD y series con capítulos.

### Características principales

- Multi-perfil (guardado en `localStorage` del sistema).
- Pantalla de inicio estilo Netflix: hero rotatorio + "Añadidos
  recientemente · Películas" + "Añadidas recientemente · Series".
- TV en Vivo con panel de previsualización y listado de canales por grupo.
- Películas y Series con detalle enriquecido (sinopsis, valoración en
  estrellas, director, reparto, año, género).
- Reproductor embebido en la propia ventana (mpv `--wid`).
- Barra de progreso y controles de mpv (OSC nativo) + botón "Volver"
  como overlay HTML.
- Volumen amplificable hasta 200 %.
- Se guarda el último canal reproducido y se restaura al volver a TV.
- Modo pantalla completa que cubre incluso la barra de tareas de Windows.
- Ventana sin marco con controles personalizados (min / max / cerrar).

---

## 2. Arquitectura

```
┌──────────────────────────────────────────────────────────┐
│                     GadirTV (Electron)                    │
│                                                            │
│  ┌────────────────────┐        ┌────────────────────────┐  │
│  │ Main window        │        │ Player window (child)   │  │
│  │ (React + Chromium) │        │ - Transparent overlay   │  │
│  │ - Frontend UI      │        │ - mpv.exe --wid=<HWND>  │  │
│  │ - Xtream via IPC   │        │ - Native OSC controls   │  │
│  └────────────────────┘        └────────────────────────┘  │
│         │                                │                 │
│         ▼                                ▼                 │
│  Node.js main process (main.js) — IPC hub                  │
│  ├── http requests to gadir.co (bypasses Chromium)         │
│  ├── mpv.exe spawn / kill                                  │
│  ├── mpv IPC pipe control                                  │
│  └── window management                                     │
└──────────────────────────────────────────────────────────┘
                      │
                      ▼
             http://gadir.co:80/player_api.php
             (Xtream Codes API)
```

### Por qué mpv y no HTML5 video

Chromium no soporta de forma nativa AC3, EAC3 ni MPEG-2, códecs típicos
en las emisiones IPTV. Se decidió incrustar `mpv.exe` (portable) dentro
del `.exe` de GadirTV y renderizarlo en una ventana hija de Electron con
`--wid=<HWND>` para que se vea *embebido* dentro de la aplicación.

### Por qué las peticiones HTTP van por Node.js

Chromium bloquea silenciosamente peticiones HTTP planas desde origen
`file://` incluso con `webSecurity: false`. Todas las llamadas a
`gadir.co` van por el proceso principal (Node.js) usando el módulo
`http` con `User-Agent: VLC/3.0.20 LibVLC/3.0.20`, exactamente igual que
IPTV Smarters o VLC.

---

## 3. Estructura de directorios

```
/app/
├── frontend/                    ← Código fuente React (CRA)
│   ├── src/
│   │   ├── App.js               Componente raíz + toda la UI
│   │   ├── App.css              Estilos globales
│   │   ├── api.js               Cliente Xtream (dual: IPC + axios)
│   │   ├── index.js
│   │   └── components/ui/       shadcn/ui
│   ├── public/
│   │   ├── index.html
│   │   └── gadir-logo.png
│   ├── package.json
│   └── build/                   Salida del `yarn build`
│
├── backend/                     ← Proxy FastAPI para preview web
│   ├── server.py                (solo se usa en el navegador,
│   │                             el .exe habla directo con gadir.co)
│   └── requirements.txt
│
├── electron/                    ← Wrapper de escritorio
│   ├── main.js                  Proceso principal Electron
│   ├── preload.js               Bridge IPC de la ventana principal
│   ├── player_preload.js        Bridge IPC de la ventana del player
│   ├── player_overlay.html      Overlay del reproductor (botón Volver)
│   ├── installer.nsi            Script NSIS para el instalador
│   ├── icon.png                 Icono de la app
│   ├── package.json
│   ├── mpv/                     mpv.exe portable + dependencias
│   ├── app/                     React compilado (copiado por prepare.js)
│   └── dist_manual/             Salida del build (Electron unpacked)
```

---

## 4. Flujo de datos: reproducir un canal

1. Usuario hace doble click en un canal → `handleSelect(item, "live_fs")`.
2. Se guarda el canal en `localStorage["g_last_channel"]`.
3. `playLiveInMpv(item, true)` → construye la URL Xtream:
   `http://gadir.co:80/live/USER/PASS/STREAMID.ts`
4. Antes de lanzar mpv, se paran todos los `<video>`/`<audio>` internos
   para evitar mezcla de audio.
5. Se llama a `window.electronAPI.showPlayer({url, name})`.
6. `main.js` recibe la IPC:
   - Mata cualquier mpv anterior + espera 500 ms.
   - Muestra la ventana hija transparente `playerWin`.
   - Ajusta sus bordes a los del monitor principal.
   - Marca la ventana como `alwaysOnTop('screen-saver')`.
   - Obtiene el HWND nativo con `getNativeWindowHandle().readInt32LE(0)`.
   - Lanza `mpv.exe` con `--wid=<HWND>`, `--vo=direct3d`, `--osc=yes`,
     `--input-ipc-server=\\.\pipe\gadirmpv-<pid>-<ts>`.
7. mpv renderiza el vídeo *dentro* de la ventana hija.
8. Node se conecta a la pipe de mpv para poder enviar comandos
   (pausar, seek, volumen).
9. Al pulsar Esc / Retroceso / mpv Q → mpv termina → el handler
   `on('exit')` oculta la ventana hija y devuelve foco a la principal.

---

## 5. API Xtream utilizada

| Endpoint / action                 | Uso en la app                       |
| --------------------------------- | ----------------------------------- |
| `?username&password`              | Login / diagnóstico                 |
| `action=get_live_categories`      | Grupos de TV en Vivo                |
| `action=get_live_streams`         | Canales de un grupo                 |
| `action=get_vod_categories`       | Grupos de Películas                 |
| `action=get_vod_streams`          | Películas de un grupo               |
| `action=get_vod_info` `vod_id=…`  | Detalle (sinopsis, rating, cast)    |
| `action=get_series_categories`    | Grupos de Series                    |
| `action=get_series`               | Series de un grupo                  |
| `action=get_series_info series_id=…` | Detalle + temporadas + episodios |

**Reintentos automáticos**: cuando `gadir.co` devuelve status 200 con
cuerpo vacío (típico bajo carga), Node.js reintenta hasta 3 veces con
backoff 400/800/1200 ms.

---

## 6. Configuración

### `/app/frontend/.env`

```
REACT_APP_BACKEND_URL=https://<tu-backend>.preview.emergentagent.com
```
(Sólo relevante para el preview web. El `.exe` habla directamente con
`gadir.co`.)

### `/app/backend/.env`

```
MONGO_URL=mongodb://localhost:27017
DB_NAME=gadirtv
```
(No hay persistencia real: la app usa `localStorage` en cliente.)

### mpv (embed)

Flags principales usados al lanzar `mpv.exe --wid=<HWND>`:

```
--vo=direct3d               ← más compatible con --wid
--hwdec=no                  ← forzar decodificación software para máxima
                              compatibilidad con canales IPTV
--force-window=yes
--osc=yes                   ← barra de progreso nativa mpv
--volume=130
--volume-max=200
--input-ipc-server=\\.\pipe\gadirmpv-<pid>-<ts>
--cache=yes --cache-secs=10
--demuxer-max-bytes=100M
--stream-lavf-o=reconnect=1,reconnect_streamed=1,reconnect_delay_max=5
--user-agent=VLC/3.0.20 LibVLC/3.0.20
```

---

## 7. Compilar desde código fuente

### Requisitos

- Node.js 20+
- Yarn
- NSIS 3.08+ (`sudo apt install nsis` en Linux)
- Binario `asar` (viene con electron-builder)
- Un directorio `electron/dist_manual/GadirTV/` con Electron ya
  descomprimido + carpeta `mpv/` con `mpv.exe` incluido.

### Pasos

```bash
# 1. Instalar dependencias
cd frontend && yarn install
cd ../electron && yarn install

# 2. Compilar el frontend React
cd ../frontend
CI=false GENERATE_SOURCEMAP=false yarn build

# 3. Copiar el build al directorio del Electron
cd ../electron
node ./scripts/prepare.js

# 4. Empaquetar dentro del app.asar existente
rm -rf /tmp/stage && mkdir -p /tmp/stage
./node_modules/.bin/asar extract dist_manual/GadirTV/resources/app.asar /tmp/stage
cp main.js preload.js player_preload.js player_overlay.html /tmp/stage/
rm -rf /tmp/stage/app && cp -r app /tmp/stage/app
./node_modules/.bin/asar pack /tmp/stage dist_manual/GadirTV/resources/app.asar

# 5. ZIP portable
(cd dist_manual && zip -r -9 ../GadirTV-Portable-v1.13.zip GadirTV)

# 6. Instalador NSIS
makensis installer.nsi          # produce GadirTV-Setup-1.13.exe
zip -9 GadirTV-Installer-v1.13.zip GadirTV-Setup-1.13.exe
```

---

## 8. Depuración

- La app permite abrir DevTools con **F12** (bloqueado F5/Ctrl+R para
  no perder sesión).
- Botón **"Diagnóstico de conexión con gadir.co"** en la pantalla de
  login: prueba en tiempo real la conexión (IPC + directo) y muestra la
  respuesta cruda de `get_live_categories`, `get_vod_categories` y
  `get_series_categories`.
- Logs de mpv: si `mpv.exe` falla, el `stderr` se emite por el evento
  IPC `mpv:exited { code, stderr }`.

---

## 9. Atajos de teclado

Durante la reproducción:

| Tecla         | Acción                       |
| ------------- | ---------------------------- |
| Esc / ← Retro | Volver a la app              |
| Espacio       | Play / Pausa                 |
| ← / →         | Seek −10 s / +10 s           |
| ↑ / ↓         | Volumen +5 % / −5 %          |
| M             | Silenciar                    |
| F             | Fullscreen dentro de mpv     |

---

## 10. Créditos y licencia

**GadirTV** — cliente IPTV para el servicio `gadir.co`.

- **UI**: React 19 + Tailwind CSS + shadcn/ui.
- **Empaquetado**: Electron + electron-builder / NSIS.
- **Reproducción**: mpv (LGPL v2.1+), `mpegts.js` para preview.

Uso privado / no comercial. mpv se distribuye bajo su licencia
original — ver `/app/electron/mpv/LICENSE.txt`.
