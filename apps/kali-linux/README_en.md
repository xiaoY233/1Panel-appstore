# Kali Linux

Kali Linux is a Debian-based Linux distribution designed for penetration testing and security auditing.

## Features

- Pre-installed with hundreds of penetration testing tools
- Designed for security researchers and penetration testers
- Supports multiple architectures (amd64, arm64)
- Based on LinuxServer.io Docker image
- Provides a complete penetration testing environment
- Supports web interface access

## Usage

1. Access the container via web browser after deployment (default ports 3000 and 3001)
2. Complete Kali Linux environment available inside the container
3. Use pre-installed penetration testing tools for security testing
4. Docker socket mounting supported, allowing Docker commands inside the container

## Pre-installed Tools

Kali Linux includes hundreds of penetration testing tools, including but not limited to:

- Information gathering tools (nmap, whois, dnsenum, etc.)
- Vulnerability scanning tools (OpenVAS, Nessus, etc.)
- Wireless network tools (aircrack-ng, reaver, etc.)
- Web application testing tools (Burp Suite, OWASP ZAP, etc.)
- Password cracking tools (John the Ripper, Hashcat, etc.)
- Social engineering tools (Social Engineer Toolkit, etc.)

## Configuration

- **Port 3000**: HTTP web access port
- **Port 3001**: HTTPS web access port
- **Timezone**: Asia/Shanghai (Shanghai timezone)
- **Shared Memory**: 1GB, ensuring tools run properly
- **Security Options**: seccomp:unconfined, allowing privileged operations
- **Docker Socket**: Mounts host Docker socket, supporting Docker operations inside container

## Security Notice

⚠️ **Important Notice**: Kali Linux should only be used for legitimate security testing and penetration testing. Please ensure:

- Only test systems you are authorized to test
- Comply with local laws and regulations
- Do not use for malicious attacks or illegal activities

## Links

- [Official Website](https://www.kali.org/)
- [Docker Hub](https://hub.docker.com/r/linuxserver/kali-linux)
- [GitHub Project](https://github.com/linuxserver/docker-kali-linux) 