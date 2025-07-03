# KSpeeder - Docker Image Acceleration & Private Registry Service

KSpeeder is a modern, multi-platform Docker image acceleration and private registry service. It is designed for environments with limited access to DockerHub or those requiring fast, local image pulls. With KSpeeder, you can easily deploy your own image acceleration service in your LAN or enterprise, significantly improving Docker image download speeds.

## Main Features

- **Image Acceleration**: Speed up Docker image pulls, especially in regions with slow or restricted access to DockerHub.
- **Private Deployment**: Deploy locally or within your LAN for enhanced security and control.
- **Multi-Platform Support**: Compatible with iStoreOS, Synology, unRAID, macOS, Linux, Windows, and more.
- **Easy Configuration**: Quick deployment via Docker Compose.
- **Data & Config Persistence**: Supports persistent storage for data and configuration, making migration and backup easy.
- **Multi-Architecture**: Supports amd64, arm64, and arm/v7 architectures.
- **High Availability**: Features such as resume, auto-retry, and robust error handling for reliable image pulls.
- **Management & Monitoring**: Built-in management and monitoring ports for easy operations.

## Typical Use Cases

- Provide unified Docker image acceleration for multiple hosts in a LAN
- Build a private image acceleration registry for teams or enterprises
- Accelerate image pulls in environments with slow or blocked access to DockerHub

## FAQ

- **Q: Which platforms are supported?**
  A: iStoreOS, Synology, unRAID, macOS, Linux, Windows, and more.
- **Q: How to persist data?**
  A: Mount /kspeeder-data and /kspeeder-config to local directories.
- **Q: What are the default ports?**
  A: Main service port 5443, management port 5003.
- **Q: How to configure the registry mirror?**
  A: See the official documentation for details.

## Official Documentation & Support

- Website: [https://kspeeder.istoreos.com/](https://kspeeder.istoreos.com/)
- Quick Start Guide: [https://kspeeder.istoreos.com/guide/getting-started.html](https://kspeeder.istoreos.com/guide/getting-started.html)
- GitHub: [https://github.com/linkease/kspeeder](https://github.com/linkease/kspeeder) 