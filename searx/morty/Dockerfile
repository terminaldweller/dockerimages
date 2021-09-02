FROM alpine:3.13 as builder
RUN apk update && apk upgrade && apk add go git
RUN git clone https://github.com/asciimoo/morty 
RUN cd morty && go build

FROM alpine:3.13
COPY --from=builder /morty/morty /usr/local/morty/
RUN apk --no-cache add ca-certificates \
&& rm -f /var/cache/apk/* \
&& adduser -D -h /usr/local/morty -s /bin/false morty morty
USER morty
ENV DEBUG=true
EXPOSE 3000
