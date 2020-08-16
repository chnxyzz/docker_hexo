FROM node:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN set -xe && \
    npm install -g hexo-cli && \
    sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    npm config set registry https://registry.npm.taobao.org 
ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV TERM=screen
