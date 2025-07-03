# 使用说明

- 首次注册的账户即为管理员账户。

- **安装 `gpu` 版本时，`1Panel` `v1.10.3-lts`以下版本会覆盖`docker-compose.yml`的`gpu`设置，所以最好安装完成后检查一下，**
  **不对则用以下覆盖并在应用目录下手动执行`docker-compose down && docker-compose up -d`。**

```
version: '3.3'
services:
  open-webui:
    image: ghcr.io/open-webui/open-webui:cuda
    container_name: ${CONTAINER_NAME}
    restart: always
    networks:
      - 1panel-network
    ports:
      - "${PANEL_APP_PORT_HTTP}:8080"
    environment:
      - NVIDIA_VISIBLE_DEVICES=all
      - OLLAMA_BASE_URL=${OLLAMA_BASE_URL}
      - OPENAI_API_KEY=${OPENAI_API_KEY}
    deploy:
      resources:
        reservations:
          devices:
            - capabilities: [gpu]
    extra_hosts:
      - "host.docker.internal:host-gateway"
    volumes:
      - "${DATA_PATH}:/app/backend/data"
    labels:  
      createdBy: "Apps"

networks:  
  1panel-network:  
    external: true

```

# 原始相关
***

# Open WebUI (Formerly Ollama WebUI) 👋

![GitHub stars](https://img.shields.io/github/stars/open-webui/open-webui?style=social)
![GitHub forks](https://img.shields.io/github/forks/open-webui/open-webui?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/open-webui/open-webui?style=social)
![GitHub repo size](https://img.shields.io/github/repo-size/open-webui/open-webui)
![GitHub language count](https://img.shields.io/github/languages/count/open-webui/open-webui)
![GitHub top language](https://img.shields.io/github/languages/top/open-webui/open-webui)
![GitHub last commit](https://img.shields.io/github/last-commit/open-webui/open-webui?color=red)
![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Follama-webui%2Follama-wbui&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)
[![Discord](https://img.shields.io/badge/Discord-Open_WebUI-blue?logo=discord&logoColor=white)](https://discord.gg/5rJgQTnV4s)
[![](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=%23fe8e86)](https://github.com/sponsors/tjbck)

Open WebUI 是一个可扩展、功能丰富且用户友好的独立部署 WebUI，设计用于完全离线运行。它支持多种 LLM 运行器，包括 Ollama 和 OpenAI 兼容的 API。如需更多信息，请务必查看我们的 [Open WebUI 文档](https://docs.openwebui.com/) 。