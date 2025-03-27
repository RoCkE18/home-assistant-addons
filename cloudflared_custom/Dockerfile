ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

CMD cloudflared tunnel run --token "${TUNNEL_TOKEN}"
