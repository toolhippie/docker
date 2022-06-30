FROM webhippie/alpine:3.16
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add docker && \
  rm -rf /var/cache/apk/*
