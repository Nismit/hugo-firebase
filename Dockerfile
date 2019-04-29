FROM node:11.14-alpine

ENV HUGO_VERSION 0.55.4

RUN apk add --no-cache git openssl py-pygments curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && apk del curl \
    && npm -g config set user root \
    && npm install -g npm@latest \
    && npm install -g firebase-tools

EXPOSE 1313