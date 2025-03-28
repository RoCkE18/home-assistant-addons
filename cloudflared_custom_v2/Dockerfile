FROM debian:bullseye-slim

ENV LANG C.UTF-8

ARG TARGETARCH

# Instalar dependências e cloudflared de acordo com a arquitetura
RUN apt-get update && \
    apt-get install -y wget ca-certificates && \
    ARCH=$( \
      if [ "${TARGETARCH}" = "amd64" ]; then echo "amd64"; \
      elif [ "${TARGETARCH}" = "arm64" ]; then echo "arm64"; \
      elif [ "${TARGETARCH}" = "arm" ]; then echo "arm"; \
      else echo "amd64"; fi ) && \
    wget -O /usr/local/bin/cloudflared "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-${ARCH}" && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
