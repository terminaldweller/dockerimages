
FROM ubuntu:18.04
RUN apt update && apt upgrade

RUN wget https://apt.llvm.org/llvm.sh \
      && chmod +x ./llvm.sh \
      && ./llvm.sh 11

RUN git clone https://github.com/bloodstalker/cgrep \
      && cd cgrep \
      && git submodule init \
      && git submodule update \
      && make CXX=clang-11 LLVM_CONF=llvm-config-11
