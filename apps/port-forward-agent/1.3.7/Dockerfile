FROM debian:bullseye-slim

RUN mkdir -p /app/pfg

WORKDIR /app/pfg

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget unzip tzdata

RUN wget -O pfg.zip https://gitee.com/tavenli/port-forward/releases/download/v1.3.7/forward-agent.linux64.v1.3.7.zip && \
    unzip pfg.zip && \
    chmod +x /app/pfg/forward-agent/forward-agent

ENV TZ=Asia/Shanghai

WORKDIR /app/pfg/forward-agent

CMD ["./forward-agent"]
