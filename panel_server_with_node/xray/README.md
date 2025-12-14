# XRay Configuration Template

This directory contains `config.jsonc`, a ready-made template for XRay configuration. This configuration defines how XRay handles inbound and outbound connections, routing, and other advanced network settings.

## Purpose

This `config.jsonc` file serves as a baseline XRay configuration that you can customize to fit your specific needs. Once modified, this file is intended to be uploaded or specified within the Remnawave Panel's graphical user interface (GUI). The Panel will then provision this configuration to the specified nodes, allowing them to operate with your custom XRay settings.

## Key Configuration Sections

The `config.jsonc` includes standard XRay configuration sections:

-   **`log`**: Defines logging levels and options.
-   **`api`**: Configures the XRay API for management and statistics collection.
-   **`inbounds`**: Specifies incoming connection listeners and their protocols (e.g., Vless-TCP-XTLS-Vision, Shadowsocks-TCP).
-   **`outbounds`**: Defines outgoing connection protocols (e.g., direct, block, localhost).
-   **`routing`**: Manages traffic routing rules based on IP addresses, domains, and protocols.
-   **`policy`** and **`stats`**: Configure system policies and statistics collection.

## Essential Modifications

Before using this template, you **must** modify the following placeholders:

1.  **`{{SHADOWSOCKS_TCP_PATH}}`**: This placeholder appears twice within the `inbounds` section (for both Vless-TCP-XTLS-Vision and Shadowsocks-TCP configurations). You need to replace this with a custom path for your Shadowsocks TCP traffic. Ensure consistency if you modify both occurrences. Read mode about "All-In-One" configuration in this example: https://github.com/XTLS/Xray-examples/tree/main/All-in-One-fallbacks-Nginx;
2.  **`*{{DOMAIN}}`**: This placeholder is used for specifying the paths to your SSL certificate and key files. You must replace `{{DOMAIN}}` with your actual domain name, ensuring that the corresponding `privkey.pem` and `fullchain.pem` are correctly located at `/etc/letsencrypt/live/YOUR_DOMAIN/`.

## Usage with the Panel

After you have customized `config.jsonc` with your specific paths and domain, you will typically upload or paste its content into the Remnawave Panel's configuration interface. The Panel then handles the deployment of this customized XRay configuration to your nodes.
