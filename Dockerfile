FROM ubuntu:18.04

WORKDIR /dir
ENV PATH="/dir:${PATH}"

VOLUME /home/enervate

ADD helloworld.c .


RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get update && \
    apt-get install build-essential -y && \
    gcc helloworld.c -o hello_enervate

ENTRYPOINT hello_enervate

