#!/bin/bash
echo "Iniciando tunnel Cloudflare..."
echo "Token recebido: $TUNNEL_TOKEN"

if [ -z "$TUNNEL_TOKEN" ]; then
  echo "❌ ERRO: TUNNEL_TOKEN está vazio ou não foi passado pelo Supervisor!"
  exit 1
else
  echo "✅ Token parece válido"
fi

cloudflared tunnel run --token "${TUNNEL_TOKEN}"
