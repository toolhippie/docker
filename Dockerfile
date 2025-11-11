FROM ghcr.io/dockhippie/alpine:3.22@sha256:c5bd9014e136d50a0d82c511a4fcf52a2ef43c55d9d535de035870845d1a98be
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
