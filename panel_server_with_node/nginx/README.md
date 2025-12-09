# Nginx Configuration for Combined Server

This directory contains the Nginx configuration for a combined "panel server with node" deployment. It merges the configurations from both the `node_server` and `panel_server` setups, allowing all services to run on a single machine.

## Overview

The Nginx configuration is structured to handle requests for all services, including the panel, subscription page, and the node services.

### `nginx.conf`

This is the main Nginx configuration file, defining global settings for the server. It includes a default server that redirects all HTTP traffic to HTTPS.

### `conf.d` Directory

This directory contains the specific server block configurations for all services:

- **`anubis-fallback.conf`**: From the `node_server` setup, this configures the fallback for the Anubis service.
- **`camouflage-fallback.conf`**: From the `node_server` setup, this provides an example for a camouflage host.
- **`panel.conf`**: From the `panel_server` setup, this configures Nginx for the main panel application.
- **`subscription.conf`**: From the `panel_server` setup, this configures Nginx for the subscription page.
- **`upstream-anubis.conf`**: From the `node_server` setup, this defines the Anubis upstream.

### `snippets` Directory

This directory contains reusable configuration snippets for gzip, proxy parameters, and SSL settings, used by the various server blocks.

## Production Usage

As this is a combined setup, it's crucial to correctly configure all placeholder variables (e.g., `{{PANEL_DOMAIN}}`, `{{SUBSCRIPTION_DOMAIN}}`, `{{CAMOUFLAGE_FALLBACK_HOST}}`) and ensure that all required SSL certificates are in place. For production use, it is highly recommended to use absolute paths and to review the individual `README.md` files in the `node_server` and `panel_server` nginx directories for more detailed information.