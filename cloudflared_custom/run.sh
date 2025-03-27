#!/bin/bash
echo "Iniciando tunnel Cloudflare..."
cloudflared tunnel run --token "${TUNNEL_TOKEN}"
