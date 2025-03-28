FROM debian:bullseye-slim

ENV LANG C.UTF-8

# Instalar dependências e binário multi-arch
RUN apt-get update && \
    apt-get install -y wget ca-certificates tar && \
    wget -O cloudflared.tgz https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux.tgz && \
    tar -xvzf cloudflared.tgz && \
    mv cloudflared /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared && \
    rm cloudflared.tgz

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
