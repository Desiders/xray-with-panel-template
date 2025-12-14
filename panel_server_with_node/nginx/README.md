# Configuration

### `conf.d` Directory

This directory contains the specific server block configurations for all services:

- **`anubis-fallback.conf`**: It acts as a fallback and proxies requests to the `anubis` upstream. It also serves `robots.txt` and `favicon.ico`;
- **`camouflage-fallback.conf`**: It's designed to proxy requests to a camouflage host. This is intended as a template and should be adapted for your use case;
- **`upstream-anubis.conf`**: Defines the `anubis` upstream, pointing to the Anubis service;
- **`panel.conf`**: Configures the Nginx server for the main panel application;
- **`subscription.conf`**: Configures the Nginx server for the subscription page.

## Usage

**Important:** The current configuration uses relative paths and is provided as an example. For a production environment, you should modify the configurations to use absolute paths for volumes and included files to ensure stability and prevent path-related issues. You should also replace placeholder variables with your actual hostnames.
