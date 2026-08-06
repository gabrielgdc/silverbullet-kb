# Index — SilverBullet Custom

This file is the entry point (home) of this repository. It documents the folder structure, the role of each configuration/style file, and the third-party libraries installed in this SilverBullet v2 space.

> For Docker build/deploy instructions, see [README.md](./README.md). This Index focuses on explaining **what exists and what it's for**.

---

## Folder structure

```text
.
├── Configuration/                  # Everything that is application customization (version-controlled)
│   │
│   ├── Settings/                   # Settings via space-lua (config.set / command.define / actionButton.define)
│   │   ├── Shortcuts.md             # Global keyboard shortcuts (Ctrl-P, Ctrl-Shift-P, etc.)
│   │   ├── SidePanel.md             # config.set("explorer", {...}) — Document Explorer parameters
│   │   └── Buttons/                 # Custom action-bar buttons (top right)
│   │       ├── ExitButton.md          # Logout button ("Client: Logout")
│   │       └── SidePannelButton.md    # Command + button to open/close the Document Explorer
│   │
│   ├── Styles/                     # Visual customization via space-style (CSS), applied in priority order
│   │   ├── Palette.md                # priority 1000 — base color palette (light/dark, monochromatic)
│   │   ├── Configuration.md          # priority 1000 — maps SilverBullet's CORE variables (--ui-accent-color, --root-*, --modal-*, --editor-*) to the palette above
│   │   ├── Base.md                   # priority 800  — global reset and font smoothing
│   │   ├── Editor.md                 # priority 700  — markdown elements (tags, inline/block code, links, lists)
│   │   ├── SidePanel.md              # priority 700  — Document Explorer panel colors (icons, folders, files)
│   │   └── Interface.md              # priority 600/1005 — general UI (top bar, inline buttons, notifications, command palette/modals)
│   │
│   └── Library/                    # Third-party libraries, installed manually via file (not through the UI)
│       ├── Mr-xRed/                  # Document Explorer + Advanced Panel Control
│       │   ├── DocumentExplorer.md      # Main library page — commands, panel, config.define("explorer", ...)
│       │   ├── AdvancedPanelControl.md  # Companion library — floating/resizable windows
│       │   ├── UnifiedAdvancedPanelControl.js  # JS engine imported by both libraries above
│       │   ├── docex_styles.css         # Explorer panel CSS (loaded inside the panel's iframe)
│       │   ├── lucide-icons.svg         # Custom icon sprite (replaces the library's original)
│       │   ├── lucide-icons.svg.orig    # ORIGINAL library sprite, preserved (renamed, not deleted)
│       │   └── hybrid-cursor.svg        # Custom cursor used on the Markdown badge hover
│       │
│       └── silverbullet-diagram/     # Diagrams (Mermaid support)
│           └── Mermaid.md              # Official library, no customizations — uses Mermaid via CDN
│
├── Dockerfile                      # Image build (based on ghcr.io/silverbulletmd/silverbullet:latest)
├── docker-compose.yaml             # Local orchestration + volumes
├── .dockerignore
├── README.md                       # Build/deploy instructions
├── Index.md                        # Portuguese version of this file
└── Index.en.md                     # this file (English version)
```

> **Knowledge/** (personal notes) **is not part of this repository** — it's mounted externally via a Docker volume (`/Users/gabriel/Library/Mobile Documents/com~apple~CloudDocs/8. Knowledge` → `/space/Knowledge`), specifically so the configuration can be version-controlled without versioning personal content.

---

## Installed libraries

### 📁 Document Explorer (Mr-xRed)
- **What it is:** a sidebar "file explorer"-style panel for browsing the space's pages — grid/list/tree view, per-file-type icons, filters, keyboard shortcut, etc.
- **Where it lives:** `Configuration/Library/Mr-xRed/`
- **How it was installed:** manually via file (bypassing the Library Manager UI), following the `share.uri` / `share.hash` / `share.mode: pull` contract that SilverBullet's library installer uses.
- **Customizations applied:**
  - Color palette adapted to the monochromatic theme in `Configuration/Styles/SidePanel.md` (uses `--accent-secondary` to avoid blown-out contrast).
  - Icons replaced with a custom sprite (`lucide-icons.svg`), keeping the original preserved as `lucide-icons.svg.orig`.
- **Configuration:** `Configuration/Settings/SidePanel.md` — `config.set("explorer", {...})` (position, tile size, negative filters, etc.).

### 🛠️ Advanced Panel Control
- **What it is:** a companion engine for the Document Explorer — lets the side panel become a floating/resizable window.
- **Where it lives:** `Configuration/Library/Mr-xRed/AdvancedPanelControl.md` + `UnifiedAdvancedPanelControl.js` (JS engine shared with the Document Explorer).

### 📊 Diagrams (Mermaid)
- **What it is:** an official library from SilverBullet's library repository (by Zef Hemel) — adds Mermaid diagram support inside pages.
- **Where it lives:** `Configuration/Library/silverbullet-diagram/Mermaid.md`
- **Customizations:** none — uses the Mermaid bundle via CDN by default (the library itself exposes a `Mermaid: Download bundle for offline use` command if offline use is desired).

---

## Color palette (summary)

Defined in `Configuration/Styles/Palette.md`, monochromatic theme (no "loud" colors like SilverBullet's default purple):

| Variable | Dark | Light |
|---|---|---|
| `--accent-primary` | `#d4d4d4` | `#3f3f3f` |
| `--accent-secondary` | `#9a9a9a` | `#6a6a6a` |
| `--surface-base` | `#101010` | `#f8f8f8` |
| `--text-primary` | `#f5f5f5` | (dark) |

These variables are consumed at two levels:
- **SilverBullet core** — via `Configuration/Styles/Configuration.md` (buttons, modals, focus, active tabs).
- **Document Explorer** — via `Configuration/Styles/SidePanel.md` (panel icons, folders, files).

---

## How to run

```bash
docker compose build
docker compose up -d
```

---

## Known issues (TODO)

- ⚠️ **The `Library` volume mapping may be misaligned:** the current `docker-compose.yaml` mounts `./Library:/space/Library`, but there is no `Library/` folder at the repository root today — the libraries live under `Configuration/Library/`. Since `./Library` doesn't exist on the host, Docker creates an empty folder and mounts it at `/space/Library`, which may prevent the libraries from being correctly recognized as `Library/...` inside the space. Worth confirming whether this is currently causing issues, or whether the mount needs to point to `./Configuration/Library` instead.
- The SilverBullet login page cannot be customized without forking/recompiling the binary (the client's HTML/CSS is embedded into the Rust binary at build time).
