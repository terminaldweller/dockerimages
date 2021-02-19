#!/bin/sh
echo "running create certs..."
# Request certificates
certbot certonly --standalone \
  --non-interactive \
  --agree-tos \
  --email thabogre@gmail.com \
  --http-01-port=380 \
  --cert-name terminaldweller.com \
  -d terminaldweller.com,mail.terminaldweller.com,www.terminaldweller.com,matrix.terminaldweller.com,element.terminaldweller.com,blog.terminaldweller.com \
  --dry-run
  # --server https://acme-v02.api.letsencrypt.org/directory \
# Concatenate certificates
. /etc/scripts/concatenate-certificates.sh
# Update certificates in HAProxy
. /etc/scripts/update-haproxy-certificates.sh
