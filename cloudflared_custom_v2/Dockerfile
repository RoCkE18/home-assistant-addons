FROM debian:bullseye-slim

ENV LANG C.UTF-8

# Instalar dependências e o binário do cloudflared conforme a arquitetura
RUN apt-get update && \
    apt-get install -y wget ca-certificates && \
    ARCH=$(uname -m) && \
    case "$ARCH" in \
        x86_64) PLATFORM="amd64" ;; \
        aarch64) PLATFORM="arm64" ;; \
        armv7l) PLATFORM="arm" ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-$PLATFORM && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
