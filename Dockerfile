FROM ghcr.io/typst/typst:0.14.2

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    git \
    font-ipa \
    font-noto-cjk \
    font-hack \
    make \
    nodejs-current \
    npm \
    openssh \
    sudo \
    gcompat

RUN adduser -D -s /bin/bash code \
    && mkdir -p /home/code \
    && chown -R code:code /home/code \
    && addgroup code wheel \
    && echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel

USER code