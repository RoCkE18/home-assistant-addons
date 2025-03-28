#!/bin/bash
echo "Iniciando tunnel Cloudflare..."

# Ler o token diretamente do ficheiro de opções
TUNNEL_TOKEN=$(jq -r .tunnel_token /data/options.json)

echo "Token recebido: $TUNNEL_TOKEN"
echo "$TUNNEL_TOKEN" | grep -q "eyJ" && echo "Token parece válido" || echo "Token está vazio ou inválido"

cloudflared tunnel run --token "${TUNNEL_TOKEN}"
