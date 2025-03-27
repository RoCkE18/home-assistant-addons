#!/bin/bash
echo "Iniciando tunnel Cloudflare..."
echo "Token recebido: $TUNNEL_TOKEN"
cloudflared tunnel run --token "${TUNNEL_TOKEN}"
