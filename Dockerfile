FROM webhippie/alpine:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Docker" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/docker"]

RUN apk update && \
  apk upgrade && \
  apk add docker py-pip && \
  pip install docker-compose
