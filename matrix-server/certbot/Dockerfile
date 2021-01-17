FROM certbot/certbot:v1.11.0
RUN apk update && apk add socat
COPY ./scripts/ /etc/scripts/
EXPOSE 380
