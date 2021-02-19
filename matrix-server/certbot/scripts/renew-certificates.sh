#!/bin/sh

echo "running renew certs..."
if [ -d /etc/letsencrypt/live/terminaldweller.com ]; then
  certbot renew --http-01-port=380
  . /etc/scripts/concatenate-certificates.sh
  . /etc/scripts/update-haproxy-certificates.sh
else
  . /etc/scripts/create-certificates.sh
fi
