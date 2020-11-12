FROM centos:7
RUN yum update
RUN yum install tmux wget tar bzip2 openssh-server openssh-clients initscripts -y

RUN mkdir devi
WORKDIR /devi
RUN wget https://github.com/matterhorn-chat/matterhorn/releases/download/50200.10.2/matterhorn-50200.10.2-centos-7-x86_64.tar.bz2
RUN tar -xvf matterhorn-50200.10.2-centos-7-x86_64.tar.bz2
RUN cd matterhorn-50200.10.2-centos-7-x86_64
# ENTRYPOINT ["./matterhorn"]

EXPOSE 9000
