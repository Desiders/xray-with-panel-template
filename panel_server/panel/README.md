# Remnawave Panel

This directory contains the core services for the Remnawave Panel, including the main backend application, a database, and a Redis cache.

## Configuration

The primary configuration for these services is managed through an `.env` file.

### `.env.template`

A template file, `.env.template`, is provided, which lists all the environment variables required to run the panel.

### `.env` File and Official Documentation

**Crucially, you must create your own `.env` file and populate it according to the official Remnawave documentation.** The configuration options are extensive and control everything from database connections and JWT secrets to Telegram notifications and Prometheus metrics.

For a complete guide on how to configure the `.env` file, please refer to the official documentation:
[https://docs.rw/docs/install/remnawave-panel#step-2--configure-the-env-file](https://docs.rw/docs/install/remnawave-panel#step-2--configure-the-env-file)

## Running the Service

1. Create a `.env` file based on `.env.template`;
2. Carefully configure all the necessary variables in the `.env` file by following the [official Remnawave documentation](https://docs.rw/docs/install/remnawave-panel#step-2--configure-the-env-file). **Do not use the default secrets in a production environment.**;
3. Run the service using `docker-compose up -d`.
