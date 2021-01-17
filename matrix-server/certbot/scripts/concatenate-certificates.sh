#!/bin/bash

if [ -f /etc/letsencrypt/live/davole.com/fullchain.pem -a -f /etc/letsencrypt/live/davole.com/privkey.pem ]; then
  cat /etc/letsencrypt/live/davole.com/fullchain.pem /etc/letsencrypt/live/davole.com/privkey.pem > /etc/certificates/davole.com.pem
fi
