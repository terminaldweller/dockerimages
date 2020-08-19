
FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add zathura st wget tar make gcc musl-dev libx11-dev
RUN wget https://dl.suckless.org/tools/tabbed-0.6.tar.gz
RUN tar -xvf tabbed-0.6.tar.gz && cd tabbed-0.6 && make && make install

RUN mkdir devi
WORKDIR /devi
