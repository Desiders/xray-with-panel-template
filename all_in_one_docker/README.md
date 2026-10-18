# Docker Compose Setup

Docker Compose configuration for RemnaNode, NGINX, Anubis, and the optional Remnawave Panel.

## Configuration Files

| File | Description |
|---|---|
| `compose.yaml` | Starts RemnaNode, NGINX, and Anubis. NGINX uses host networking. |
| `compose.panel.yaml` | Additionally starts the Remnawave Panel and its dependencies. |

## Configuration

Before deployment, update the NGINX configurations with your domains.

**Camouflage fallback** — `nginx/conf.d/camouflage-fallback.conf`

- `<CAMOUFLAGE-DOMAIN>` — Replace with the real website domain used for camouflage.

**Remnawave Panel** — `nginx-panel/panel.conf`

- `<YOUR-PANEL-DOMAIN>` — Domain for the Remnawave Panel.
- `<YOUR-PAGE-DOMAIN>` — Domain for the subscription page.

Make sure the corresponding Let's Encrypt certificate directory names match the configured domains.

## Usage

**Default deployment**

```bash
docker compose up -d
```

**With Remnawave Panel**

```bash
docker compose -f compose.yaml -f compose.panel.yaml up -d
```

**Recreate containers**

```bash
docker compose up -d --force-recreate
```

When using the panel configuration, include `-f compose.panel.yaml` in subsequent Compose commands as well.

## TLS Certificates

Certbot must be configured and started separately. It is not included in the main Compose deployment.

Ensure certificates have been issued for the required domains and are available in the expected Let's Encrypt directories before starting services that depend on them.
