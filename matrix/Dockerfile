FROM debian:bullseye-slim AS builder
RUN apt update && apt upgrade -y
RUN apt install -y golang libolm-dev libolm3 gcc g++ git
WORKDIR /root
RUN git clone https://github.com/tulir/gomuks.git && cd gomuks && go build

FROM debian:bullseye-slim
COPY --from=builder /root/gomuks/gomuks /root/gomuks
RUN apt update && apt install libolm3
ENTRYPOINT ["/root/gomuks"]
RUN rm -rf /var/lib/apt/lists/*
