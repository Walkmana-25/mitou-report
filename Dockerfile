FROM ghcr.io/typst/typst:0.14.0

RUN apk add --no-cache \
    bash \
    git \
    font-ipa \
    font-noto-cjk \
    font-hack \
    make \
    nodejs-current \
    npm \
    openssh

RUN adduser -D -s /bin/bash code \
    && mkdir -p /home/code \
    && chown -R code:code /home/code

USER code