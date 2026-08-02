# SilverBullet Custom

A customized version of **SilverBullet** built for personal learning and experimentation.

The purpose of this repository is to explore SilverBullet's customization capabilities, develop custom themes, scripts, settings, and UI improvements, and maintain a reproducible Docker-based environment.

The project separates the application configuration from the knowledge base, allowing all customizations to be version-controlled while keeping personal notes stored externally.

---

## Project Structure

```text
.
├── Configuration
│   ├── Scripts
│   └── Settings
│       ├── Keyboard.md
│       └── SidePanel.md
│
├── Styles
│   ├── Icons
│   ├── Base.md
│   ├── Configuration.md
│   ├── Editor.md
│   ├── Interface.md
│   ├── Palette.md
│   └── SidePanel.md
│
├── Dockerfile
├── docker-compose.yaml
├── .dockerignore
└── README.md
```

---

## Architecture

This project separates the application into two main parts.

### Configuration

Contains all SilverBullet customizations.

This includes:

- Application settings
- Keyboard shortcuts
- Scripts
- Custom themes
- UI customizations
- Icons

Everything in this repository is version-controlled.

### Knowledge Base

The knowledge base is **not part of this repository**.

Instead, it is stored in an external directory and mounted as a Docker volume.

Example:

```text
/mnt/iCloud/Knowledge
```

This directory is mounted inside the container as:

```text
/space/Knowledge
```

This approach allows the application to be rebuilt or updated without affecting personal notes.

---

## Docker

Build the image:

```bash
docker compose build
```

Start the container:

```bash
docker compose up -d
```

Stop the container:

```bash
docker compose down
```

Rebuild after making changes:

```bash
docker compose up -d --build
```

---

## Container Layout

```text
/space
├── Configuration
│   ├── Styles
│   ├── Scripts
│   └── Settings
│
└── Knowledge
    ├── ...
    ├── Notes
    ├── Projects
    └── Documentation
```

Where:

- **Configuration** contains all custom themes, scripts, settings, and application customizations bundled with the Docker image.
- **Knowledge** is an external Docker volume containing all personal notes and documentation.
```
