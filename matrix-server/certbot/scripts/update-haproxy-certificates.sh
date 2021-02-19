#!/bin/sh

echo "running update certs..."

echo -e "set ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem <<\n$(cat /etc/certificates/terminaldweller.com.pem)\n" | socat tcp-connect:haproxy:9999 -
echo "commit ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem" | socat tcp-connect:haproxy:9999 -
echo "show ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem" | socat tcp-connect:haproxy:9999 -
