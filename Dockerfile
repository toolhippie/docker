FROM webhippie/alpine:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Docker" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/docker"]

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
  wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.27-r0/glibc-2.27-r0.apk && \
  apk add --no-cache glibc-2.27-r0.apk && \
  rm glibc-2.27-r0.apk /etc/apk/keys/sgerrand.rsa.pub && \
  ln -s /lib/libz.so.1 /usr/glibc-compat/lib/ && \
  ln -s /lib/libc.musl-x86_64.so.1 /usr/glibc-compat/lib && \
  ln -s /usr/lib/libgcc_s.so.1 /usr/glibc-compat/lib

RUN wget -q -O /usr/bin/docker-compose https://github.com/docker/compose/releases/download/1.21.2/docker-compose-Linux-x86_64 && \
  chmod +x /usr/bin/docker-compose

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
