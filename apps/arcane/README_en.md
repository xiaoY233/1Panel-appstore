# Arcane

Arcane is a modern, open-source Docker management web panel for containers, images, networks and more.

## Features

- Modern web UI, clean and intuitive
- Visual management for containers, images, networks, volumes, etc.
- Multi-platform and multi-architecture support
- Stack (compose) definition and management
- Data and settings persist in `./data` directory
- Mount Docker socket for host-level management

## Usage

1. After deployment, access `http://your-server-ip:3000` for the web UI
2. Follow the initial setup instructions on first use
3. Data directory: `./data`
4. Mount host `/var/run/docker.sock` for container management
5. Environment variable `PUBLIC_SESSION_SECRET`: Used for session encryption. It is recommended to use a 32-character random string. You can customize it in the app form. Default: `arcane-session-4e2b8c7f9d1a6e3b2c5d7f8a1b0c9e6d`. For higher security, generate with `openssl rand -base64 32`.

## Local User Management

- On first run, Arcane creates a default admin user if no users exist.
  - **Username:** `arcane`
  - **Password:** `arcane-admin`
  - You must change this password during onboarding.
- To add users: Go to **Settings → User Management** and click **Create User**. Fill in username, display name, email, and password.

## Security Notice

- Mounting the Docker socket (`/var/run/docker.sock`) gives the container root-level access to the Docker host. Use with caution!
- Arcane is pre-release software. Features and UI may change frequently.

## Links

- [Official Website](https://arcane.ofkm.dev/)
- [GitHub Project](https://github.com/ofkm/arcane)
- [Official Documentation](https://arcane.ofkm.dev/docs/)
- [Docker Hub](https://ghcr.io/ofkm/arcane) 