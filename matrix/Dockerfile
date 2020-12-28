FROM debian:bullseye-slim AS builder
RUN apt update && apt upgrade -y
RUN apt install -y golang libolm-dev gcc g++ git
WORKDIR /root
RUN git clone https://github.com/tulir/gomuks.git && cd gomuks && go build

FROM debian:bullseye-slim
COPY --from=builder /root/gomuks/gomuks /root/gomuks
ENTRYPOINT ["gomuks"]
