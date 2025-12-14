# Anubis

Anubis is a security service used to protect camouflage website from automated bots

## Configuration

The Anubis service can be configured via environment variables in the `docker-compose.yaml` file.

The `SOCKET_MODE` environment variable controls the file permissions of the Unix socket used by Anubis. By default, it is set to `0666`, allowing read and write access for all users. You can modify this value in `docker-compose.yaml` to adjust permissions as needed for your specific deployment. If removed, you will need to manually manage permissions for users accessing the socket.
