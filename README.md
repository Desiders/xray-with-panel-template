# XRay with Panel Template

This repository provides a template for deploying a Remnawave Panel with XRay, with different deployment scenarios.

## Structure

### 1. `node_server/`

This directory contains the configuration for a standalone **Node Server**. This setup is intended for a server that will act as a node in your network, but will be managed by a separate panel server.

For more information, see the [Node Server README](./node_server/README.md).

### 2. `panel_server/`

This directory contains the configuration for a standalone **Panel Server**. This setup includes the Remnawave Panel, database, Redis, the subscription page. It is intended to be the central management point for your network.

For more information, see the [Panel Server README](./panel_server/README.md).

### 3. `panel_server_with_node/`

This directory contains a combined setup for deploying both the **Panel Server** and a **Node Server** on a single machine.

For more information, see the [Panel Server with Node README](./panel_server_with_node/README.md).
