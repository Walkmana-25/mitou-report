FROM ghcr.io/typst/typst:0.14.0

RUN apk add --no-cache \
    font-ipa \
    font-noto-cjk \
    font-hack \
    make \
    nodejs-current \
    npm
