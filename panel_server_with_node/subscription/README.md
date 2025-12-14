## Configuration

The service is primarily configured through environment variables defined in an `.env` file and further customized via `app-config.json`.

You need to create a `.env` file in this directory with the following variables:

- **`APP_PORT`**: The port on which the subscription page application listens (default `3010`).
- **`REMNAWAVE_PANEL_URL`**: The internal URL of the main Remnawave Panel service, used for API communication (e.g., `http://remnawave:3000`).

The `app-config.json` file is a crucial part of customizing the subscription page. It contains detailed configurations for different platforms (Windows, iOS, Android, macOS, Linux) and a variety of VPN clients/applications. This allows you to define:

- Download links for client applications.
- Step-by-step installation instructions.
- Guidance on how to add and use subscriptions for each client.

**Customizing this file is optional.** If you wish to tailor the subscription page experience (e.g., add new clients, update download links, or modify instructions), you should edit `app-config.json`.

For detailed information on how to customize the subscription page using `app-config.json`, please refer to the official documentation:
[https://docs.rw/docs/install/subscription-page/customization](https://docs.rw/docs/install/subscription-page/customization)
