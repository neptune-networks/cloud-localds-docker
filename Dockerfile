FROM alpine:latest

WORKDIR /data

RUN apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add \
  cloud-utils

ENTRYPOINT ["/usr/bin/cloud-localds"]
