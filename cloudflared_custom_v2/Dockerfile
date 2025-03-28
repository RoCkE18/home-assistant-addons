ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Instalar dependências e o binário do cloudflared
RUN apk add --no-cache wget ca-certificates && \
    wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 && \
    chmod +x /usr/local/bin/cloudflared

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
