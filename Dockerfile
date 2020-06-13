FROM alpine:latest

WORKDIR /images
COPY . .

RUN apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add \
  cloud-utils

CMD ["/usr/bin/cloud-localds"]
