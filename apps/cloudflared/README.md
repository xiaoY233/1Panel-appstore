1. **cloudflared 的工作原理**  
   详细了解 cloudflared 的工作方式，请查看[此链接](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/)。

2. **如何运行 cloudflared 容器**  
   使用以下命令来运行一个 cloudflared 容器：
   ```
   docker run cloudflare/cloudflared:latest tunnel --no-autoupdate --hello-world
   ```
   这个 hello-world 示例依赖于 trycloudflare.com，它不需要 Cloudflare 账户。这对于通过单个命令快速入门非常有用。

3. **实际用途**  
   对于真实的使用情况，请先创建一个免费的 Cloudflare 账户，然后前往 https://dash.teams.cloudflare.com/ -> Access -> Tunnels 创建您的第一个隧道。在那里，您将获得一个单行命令，用于启动和运行您的 cloudflared docker 容器，并进行身份验证到您的 Cloudflare 账户。

4. **用途**  
   您可以使用 cloudflared 来暴露以下内容：
   - 通过公共 DNS 主机名公开的私有基于 HTTP 的服务，可选择由 Cloudflare Access 锁定（请参阅 [https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/) 和 [https://developers.cloudflare.com/cloudflare-one/applications/configure-apps/self-hosted-apps/](https://developers.cloudflare.com/cloudflare-one/applications/configure-apps/self-hosted-apps/)）
   - 由 WARP 注册用户访问的私有网络，使用零信任方法访问 TCP/UDP IP/端口，以摆脱您的传统 VPN（请参阅 [https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/private-net/](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/private-net/)）
