FROM alpine:3.13 as builder
RUN apk update && apk upgrade && apk add go git
RUN git clone https://github.com/asciimoo/filtron 
RUN cd filtron && go build

FROM alpine:3.13
COPY --from=builder /filtron/filtron /usr/local/filtron/
RUN apk --no-cache add ca-certificates \
 && adduser -D -h /usr/local/filtron -s /bin/false filtron filtron
USER filtron
EXPOSE 4005
