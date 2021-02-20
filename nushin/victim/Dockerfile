FROM debian:buster-slim

RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt install -y snort rsyslog vim

COPY ./rsyslog.conf /etc/
