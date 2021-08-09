FROM webhippie/alpine:latest

ENTRYPOINT ["/usr/bin/docker"]

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
