#!/bin/sh

echo "running update certs..."
# Start transaction
echo -e "set ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem <<\n$(cat /etc/certificates/terminaldweller.com.pem)\n" | socat tcp-connect:haproxy:9999 -

# Commit transaction
echo "commit ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem" | socat tcp-connect:haproxy:9999 -

# Show certification info (not essential)
echo "show ssl cert /etc/letsencrypt/live/terminaldweller.com/fullchain.pem" | socat tcp-connect:haproxy:9999 -
