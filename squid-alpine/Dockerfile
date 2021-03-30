FROM alpine:3.13
RUN apk update && apk add squid
RUN rm -vrf /var/cache/apk/*
ENTRYPOINT ["squid"]
