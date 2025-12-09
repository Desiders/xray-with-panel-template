# Subscription Page Service

This directory contains the configuration for the Remnawave Subscription Page service. This service provides a user-friendly interface for managing subscriptions and guiding users through the setup of various VPN clients.

## Configuration

The service is primarily configured through environment variables defined in an `.env` file and further customized via `app-config.json`.

### `.env` file

You need to create a `.env` file in this directory with the following variables based on `.env.template`:

-   **`APP_PORT`**: The port on which the subscription page application listens (default `3010`).
-   **`REMNAWAVE_PANEL_URL`**: The internal URL of the main Remnawave Panel service, used for API communication (e.g., `http://remnawave:3000`).

### `app-config.json` for Customization (Optional)

The `app-config.json` file is a crucial part of customizing the subscription page. It contains detailed configurations for different platforms (Windows, iOS, Android, macOS, Linux) and a variety of VPN clients/applications. This allows you to define:

-   Download links for client applications.
-   Step-by-step installation instructions.
-   Guidance on how to add and use subscriptions for each client.

**Customizing this file is optional.** If you wish to tailor the subscription page experience (e.g., add new clients, update download links, or modify instructions), you should edit `app-config.json`.

For detailed information on how to customize the subscription page using `app-config.json`, please refer to the official documentation:
[https://docs.rw/docs/install/subscription-page/customization](https://docs.rw/docs/install/subscription-page/customization)

## `docker-compose.yaml`

The `docker-compose.yaml` file defines the `remnawave-subscription-page` service:

-   **Image**: Uses the `remnawave/subscription-page:latest` Docker image.
-   **Environment Variables**: Configured via an `.env` file.
-   **Configuration Volume**: Mounts `app-config.json` into the container at `/opt/app/frontend/assets/app-config.json`, which is used for customizing the subscription page's client setup instructions.
-   **Port**: Exposes the service on port `3010`.
-   **Network**: Connects to the `remnawave-network`, allowing communication with other panel services.

## Running the Service

1. Create a `.env` file based on `.env.template`;
2.  (Optional) Modify `app-config.json` to customize client configurations and instructions;
3.  Run the service using `docker-compose up -d`.
