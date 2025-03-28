FROM debian:bullseye-slim

ENV LANG C.UTF-8

ARG TARGETARCH

# Instalar dependências
RUN apt-get update && \
    apt-get install -y wget ca-certificates

# Definir binário conforme a arquitetura
RUN case "${TARGETARCH}" in \
        "amd64") ARCH="amd64" ;; \
        "arm64") ARCH="arm64" ;; \
        "arm") ARCH="arm" ;; \
    esac && \
    wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-${ARCH} && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
