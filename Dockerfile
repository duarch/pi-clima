FROM node:18-alpine
LABEL maintainer="Andre Duarch"

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 8081

CMD ["node", "server.js"]
