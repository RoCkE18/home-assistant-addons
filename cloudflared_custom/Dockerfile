ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base-debian:bullseye
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Instalar dependências e cloudflared
RUN apt-get update && \
    apt-get install -y wget ca-certificates && \
    wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
