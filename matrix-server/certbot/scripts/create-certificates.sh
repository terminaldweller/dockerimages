#!/bin/bash
# Request certificates
certbot certonly --standalone \
  --non-interactive --agree-tos --email info@davole.com --http-01-port=380 \
  --cert-name davole.com \
  -d davole.com
# Concatenate certificates
. /etc/scripts/concatenate-certificates.sh
# Update certificates in HAProxy
. /etc/scripts/update-haproxy-certificates.sh
