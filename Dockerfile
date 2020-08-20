FROM node:12-alpine

RUN apk add --no-cache bash jq

RUN yarn global add license-checker

WORKDIR /usr/app

COPY package.json package.json

COPY yarn.lock yarn.lock

RUN yarn install

COPY . /usr/app
