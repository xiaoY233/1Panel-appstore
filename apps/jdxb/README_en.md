# JDxB (Node Package) - Powerful Remote Management & Network Acceleration Tool

JDxB is a powerful remote management and network acceleration tool that meets most remote access and device interconnection needs. It supports multiple platforms (Windows, macOS, NAS, routers, Docker, etc.), enabling easy remote access to your home or office computers, NAS, routers, and various applications and services. It supports remote operations for files, audio, video, documents, and more.

## Version Info

JDxB provides two deployment versions for different network environments and feature requirements:

- **host version (recommended):**
  - Uses host network mode, with a fixed port 9118.
  - Supports TUN device, NET_ADMIN/SYS_ADMIN permissions. Suitable for advanced network features (such as NAT traversal, remote management, VPN, etc.).
  - Recommended for most home/enterprise environments.

- **bridge version:**
  - Uses bridge network mode, supports custom port mapping (default 9118), compatible with 1Panel network management.
  - Does not support TUN device. Suitable for basic remote access and unified panel management.
  - Ideal for users who need network isolation or only require standard port mapping.

Please choose the appropriate version according to your actual needs.

## Quick Binding

After starting the container, visit `http://<device IP>:9118` to access the binding page:

![](https://iepose.com/helpcenter_v3/%E8%AE%BE%E5%A4%87%E7%AB%AF-bak.png)

## Main Features

- **Remote Access**: Access your home/office computers, NAS, routers, and their applications/services from anywhere.
- **Multi-Platform Support**: Compatible with Windows, macOS, Synology, QNAP, TerraMaster, UGreen Cloud, iSpace, Lenovo Personal Cloud, Feiniu NAS, ZTE routers, iStoreOS, Docker, and more.
- **NAT Traversal**: No public IP required, easily access internal devices from the internet.
- **Site-to-Site Networking**: Interconnect devices across different locations, forming a virtual LAN.
- **Remote File Management**: Access and manage folders, audio, video, documents, and more remotely.
- **Photo Backup**: One-click backup of mobile phone photos to computer or NAS, no data cable needed.
- **Remote Wake-up**: Remotely wake up your home/office computers.
- **Secure & Reliable**: Multiple encryption layers, permission control, and data security.

## Typical Use Cases

- Remotely access and manage home/office computers, NAS, routers
- Site-to-site networking for interconnecting devices in different locations
- Automatic backup of mobile phone photos to local or NAS
- Remote access to files, photos, videos, documents, etc.
- Remote work and maintenance in environments without public IP

## Platform & Device Support

- Windows, macOS, Synology, QNAP, TerraMaster, UGreen Cloud, iSpace, Lenovo Personal Cloud, Feiniu NAS, ZTE routers, iStoreOS, Docker, and more
- Supports multiple architectures (x86_64, arm64, arm32, etc.)

## Device Binding

To use JDxB, you must bind at least one device as a "relay" for communication. Once bound, you can access internal devices and manage them remotely via this device.

## FAQ

- **Q: Which platforms and devices are supported?**
  A: Mainstream PCs, NAS, routers, cloud devices, and Docker environments. See the [Help Center](https://iepose.com/helpcenter_v3/) for details.
- **Q: Can I use it without a public IP?**
  A: Yes, NAT traversal is supported, no public IP required.
- **Q: How to back up mobile phone photos?**
  A: Use the JDxB client for one-click backup to your computer or NAS.
- **Q: Is my data secure?**
  A: Multiple encryption layers and permission control ensure data security.

## Official Documentation & Support

- Website: [https://iepose.com/jdxb/pc/](https://iepose.com/jdxb/pc/)
- Help Center: [https://iepose.com/helpcenter_v3/](https://iepose.com/helpcenter_v3/)
- GitHub: [https://github.com/ionewu/owjdxb](https://github.com/ionewu/owjdxb) 