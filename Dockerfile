FROM node:12.12-alpine
ENV NODE_ENV production
WORKDIR /app
COPY package*.json ./app
RUN npm install
RUN npm start
COPY . /app
RUN apk add --no-cache xdg-utils
EXPOSE 8083
