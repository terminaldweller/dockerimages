FROM alpine:3.16 as builder
RUN apk update && apk upgrade && apk add go git
ENV GOPROXY=https://goproxy.io
RUN git clone https://github.com/cointop-sh/cointop && cd cointop/cmd/cointop && go build

FROM alpine:3.16
COPY --from=builder /cointop/cmd/cointop/cointop /cointop/cointop
ENTRYPOINT ["/cointop/cointop"]
