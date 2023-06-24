FROM node:18-alpine

LABEL maintainer="Andre Duarch"

ENV NODE_ENV=production

WORKDIR /app

COPY [ "package.json",  "./app"]

RUN npm install

COPY . /app

RUN apk add -no-cache xdg-utils

CMD [ "npm", "start" ]

EXPOSE 8083
