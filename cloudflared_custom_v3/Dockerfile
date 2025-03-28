FROM debian:bullseye-slim

ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y wget ca-certificates jq && \
    wget -O /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 && \
    chmod +x /usr/local/bin/cloudflared

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
