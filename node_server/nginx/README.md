# Nginx Configuration

This directory contains the Nginx configuration for the node server.

## Overview

The Nginx configuration is split into several files and directories to improve modularity and readability.

### `nginx.conf`

This is the main Nginx configuration file. It defines global settings such as:
- Worker processes and connections.
- Logging paths and formats.
- A default server that redirects all HTTP traffic to HTTPS.
- Inclusion of configurations from `/etc/nginx/conf.d/`.

### `conf.d` Directory

This directory contains server block configurations.

- **`anubis-fallback.conf`**: Configures a server to listen on `127.0.0.1` at ports `8001` (proxy protocol) and `8002` (HTTP/2 with proxy protocol). It acts as a fallback and proxies requests to the `anubis` upstream. It also serves `robots.txt` and `favicon.ico`.
- **`camouflage-fallback.conf`**: An example configuration that listens on a Unix socket (`/run/nginx/nginx.sock`). It's designed to proxy requests to a camouflage host defined by the `{{CAMOUFLAGE_FALLBACK_HOST}}` variable. This is intended as a template and should be adapted for your use case.
- **`upstream-anubis.conf`**: Defines the `anubis` upstream, pointing to the Anubis service's Unix socket at `/run/anubis/instance.sock`.

### `snippets` Directory

This directory contains reusable configuration snippets.

- **`gzip.conf`**: Enables and configures gzip compression for various content types.
- **`proxy-local-params.conf`**: Sets proxy headers and timeouts for proxying to local services.
- **`proxy-params.conf`**: General proxy parameters, including headers and timeouts, for proxying to external services.
- **`ssl-params.conf`**: Configures SSL/TLS protocols and ciphers for secure connections.

## Production Usage

**Important:** The current configuration uses relative paths and is provided as an example. For a production environment, you should modify the configurations to use absolute paths for volumes and included files to ensure stability and prevent path-related issues. You should also replace placeholder variables like `{{CAMOUFLAGE_FALLBACK_HOST}}` with your actual hostnames or IP addresses.