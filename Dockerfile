FROM alpine:3.22

LABEL maintainer="tchilderhose"

RUN apk update && \
    apk add --no-cache \
    bash git \
    linux-headers g++ make perl diffutils \
    curl bind-tools \
    python3 py3-pip \
    tzdata && \
    ln -sf python3 /usr/bin/python && \
    rm -rf /var/cache/apk/*

CMD sleep 1d