#!/bin/sh
echo "running create certs..."
# Request certificates
certbot certonly --standalone \
  --non-interactive --agree-tos --email thabogre@gmail.com --http-01-port=380 \
  --cert-name terminaldweller.com \
  -d terminaldweller.com
# Concatenate certificates
. /etc/scripts/concatenate-certificates.sh
# Update certificates in HAProxy
. /etc/scripts/update-haproxy-certificates.sh
