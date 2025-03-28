FROM debian:bullseye-slim

ENV LANG C.UTF-8

# Instalar dependências, incluindo jq
RUN apt-get update && \
    apt-get install -y wget ca-certificates tar jq && \
    ARCH=$(dpkg --print-architecture) && \
    echo "Detected arch: $ARCH" && \
    case "$ARCH" in \
      amd64) ARCH_DL="amd64" ;; \
      arm64) ARCH_DL="arm64" ;; \
      armhf) ARCH_DL="arm" ;; \
      *) echo "Unsupported arch: $ARCH" && exit 1 ;; \
    esac && \
    wget -O /usr/local/bin/cloudflared "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-$ARCH_DL" && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
