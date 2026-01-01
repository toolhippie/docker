FROM ghcr.io/dockhippie/alpine:3.23@sha256:5e39b361571bce625f139dea01d8adec6219f266e3517886e48c0134948d6df8
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
