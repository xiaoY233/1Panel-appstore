# Diun

Diun is a CLI tool to monitor Docker image updates and send notifications.

## Features

- Automatically monitor Docker image updates
- Support multiple notification methods (Discord, Telegram, Slack, Email, etc.)
- Support multiple providers (Docker, Kubernetes, Swarm, Nomad, etc.)
- Cron-based scheduling
- Support multiple architectures (amd64, arm64, arm/v6, arm/v7, etc.)
- Lightweight design with low resource usage

## Usage

1. After deployment, Diun will automatically start monitoring Docker images
2. Default check interval is every 6 hours
3. When image updates are detected, notifications will be sent
4. Control which containers are monitored via Docker label `diun.enable=true`

## Configuration

- **Timezone**: Asia/Shanghai (Shanghai timezone)
- **Data Storage**: `./data` directory contains bbolt database
- **Config File**: `./diun.yml` contains all monitoring and notification configurations

## Default Configuration

The application uses the following default configuration:

```yaml
watch:
  workers: 20
  schedule: "0 */6 * * *"
  firstCheckNotif: false

providers:
  docker:
    watchByDefault: true
```

## Custom Configuration

To customize monitoring, notifications, and other configurations, please edit the `diun.yml` file. Refer to the official documentation for configuration:

- [Configuration Overview](https://crazymax.dev/diun/configuration/overview/)
- [Notifications](https://crazymax.dev/diun/notifications/)
- [Providers](https://crazymax.dev/diun/providers/)

## Supported Providers

- **Docker**: Monitor Docker containers and images
- **Kubernetes**: Monitor Kubernetes clusters
- **Swarm**: Monitor Docker Swarm services
- **Nomad**: Monitor HashiCorp Nomad tasks
- **Dockerfile**: Monitor base images in Dockerfiles
- **File**: Read image list from files

## Supported Notifications

- Discord, Telegram, Slack
- Email, Matrix, MQTT
- Pushover, Rocket.Chat
- Webhook, Script, Signal
- Gotify, Ntfy, Teams

## Monitoring Configuration

To monitor specific Docker containers, add these labels:

```yaml
labels:
  - "diun.enable=true"
  - "diun.watch_repo=true"  # Optional, monitor repository updates
```

## Links

- [Official Website](https://crazymax.dev/diun/)
- [GitHub Project](https://github.com/crazy-max/diun)
- [Docker Hub](https://hub.docker.com/r/crazymax/diun/)
- [Basic Example](https://crazymax.dev/diun/usage/basic-example/) 