
FROM ubuntu:18.04
RUN apt update && apt upgrade
RUN apt install wget gnupg2 software-properties-common make git -y

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
      && add-apt-repository "deb http://apt.llvm.org/bionic/   llvm-toolchain-bionic-10  main" \
      && apt-get update \
      && apt-get install clang-10 llvm-10-dev libclang-common-10-dev libclang-10-dev -y

RUN git clone https://github.com/bloodstalker/cgrep \
      && cd cgrep \
      && git submodule init \
      && git submodule update \
      && make CXX=clang-10 LLVM_CONF=llvm-config-10
