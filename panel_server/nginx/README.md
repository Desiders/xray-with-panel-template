# Nginx Configuration for Panel Server

This directory contains the Nginx configuration for the panel server. It is structured to manage traffic for the main panel application and the subscription page.

## Overview

The Nginx configuration is divided into several files and directories for better organization and readability, similar to the node server's Nginx setup.

### `nginx.conf`

This is the primary Nginx configuration file. It defines global settings for the Nginx server, including:
- User and worker processes.
- Error logging.
- Inclusion of Nginx modules.
- Event and HTTP settings.
- A default server block that redirects all HTTP traffic (port 80) to HTTPS (port 443), ensuring secure communication.
- Inclusion of additional server configurations from the `/etc/nginx/conf.d/` directory.

### `conf.d` Directory

This directory holds specific server block configurations for different applications or domains.

- **`panel.conf`**: Configures the Nginx server for the main panel application. It listens on port `443` for HTTPS traffic and proxies requests to the panel's backend application, typically running on `http://127.0.0.1:3000`. It expects `{{PANEL_DOMAIN}}` to be replaced with the actual domain name for the panel. SSL certificates (`fullchain.pem` and `privkey.pem`) are configured from `/etc/letsencrypt/live/{{PANEL_DOMAIN}}/`.
- **`subscription.conf`**: Configures the Nginx server for the subscription page. Similar to `panel.conf`, it listens on port `443` with SSL and proxies requests to the subscription service, typically running on `http://127.0.0.1:3010`. It expects `{{SUBSCRIPTION_DOMAIN}}` to be replaced with the actual domain name for the subscription page, and SSL certificates are configured from `/etc/letsencrypt/live/{{SUBSCRIPTION_DOMAIN}}/`.

### `snippets` Directory

This directory contains reusable fragments of Nginx configuration that are included in multiple server blocks.

- **`gzip.conf`**: Contains configurations for enabling and optimizing Gzip compression, which helps reduce the size of HTTP responses and improve loading times.
- **`ssl-params.conf`**: Defines common SSL/TLS protocols and cipher suites to ensure secure and efficient encrypted connections.

## Production Usage

**Important:** The current configuration utilizes placeholder variables (e.g., `{{PANEL_DOMAIN}}`, `{{SUBSCRIPTION_DOMAIN}}`) and assumes specific paths for SSL certificates. For a production environment, you must:
- Replace all placeholder variables with your actual domain names and service addresses.
- Ensure that valid SSL certificates are present at the specified `/etc/letsencrypt/live/YOUR_DOMAIN/` paths.
- Consider adjusting path configurations to use absolute paths for volumes and included files for enhanced stability and to prevent potential issues related to relative paths.
