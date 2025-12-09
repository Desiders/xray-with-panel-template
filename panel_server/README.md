# Panel Server

This directory contains the services that constitute the Remnawave Panel server. These services work together to provide the administrative interface, subscription management, and XRay configuration for your network.

## Services Overview

### Nginx

The Nginx service acts as a reverse proxy for the main Remnawave Panel application and the subscription page. It handles incoming HTTP/HTTPS requests, manages SSL termination, and routes traffic to the appropriate backend services. For detailed configuration, refer to the [Nginx README](./nginx/README.md).

### Panel

This directory contains the core Remnawave Panel application, including its database and caching services. It is responsible for user management, node configuration, and overall system control. Comprehensive setup and configuration instructions can be found in the [Panel README](./panel/README.md).

### Subscription

The Subscription service provides a dedicated page for users to manage their subscriptions and easily set up various VPN clients. It is highly customizable to match your branding and client instructions. For more details on its configuration and customization options, see the [Subscription README](./subscription/README.md).

### XRay

This directory holds the XRay configuration template (`config.jsonc`), which is used by the Panel to provision XRay settings to your nodes. This is where the central XRay configuration is managed. For information on customizing and using this template, please refer to the [XRay README](./xray/README.md).