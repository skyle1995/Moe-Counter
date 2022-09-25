FROM node:lts-alpine

LABEL version = "1.0" 
LABEL author = "skyle1995"

ENV NPM_MIRROR="https://registry.npmmirror.com"

WORKDIR /usr/local/src/Moe-counter

RUN set -x \
    && apk add --no-cache --virtual .build-deps \
    git \
    && yarn config set registry ${NPM_MIRROR} \
    && git clone https://github.com/skyle1995/Moe-counter-docker.git /usr/local/src/Moe-counter\
    && cd /usr/local/src/Moe-counter \
    && yarn install \
    && apk del .build-deps 

COPY config.prd.yml /usr/local/src/Moe-counter/config.yml

EXPOSE 3000

CMD [ "yarn","start" ]
