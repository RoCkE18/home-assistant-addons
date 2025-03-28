#!/bin/bash
echo "Iniciando tunnel Cloudflare..."
echo "Token recebido: $TUNNEL_TOKEN"
echo "$TUNNEL_TOKEN" | grep -q "eyJ" && echo "Token parece válido" || echo "Token está vazio ou inválido"
cloudflared tunnel run --token "${TUNNEL_TOKEN}"
