#!/bin/sh

echo "running concat certs..."
if [ -f /etc/letsencrypt/live/terminaldweller.com/fullchain.pem -a -f /etc/letsencrypt/live/terminaldweller.com/privkey.pem ]; then
  echo "when you're out, we're in...''"
  cat /etc/letsencrypt/live/terminaldweller.com/fullchain.pem /etc/letsencrypt/live/terminaldweller.com/privkey.pem > /etc/certificates/terminaldweller.com.pem
fi
