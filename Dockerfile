FROM ghcr.io/dockhippie/alpine:3.23@sha256:f797bd00305b8c250138cee4e3c9354cac69ea97bb03d76cf527a9200221ec95
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
