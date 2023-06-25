WORKDIR /app
COPY ["package*.json", "./app"]
RUN npm install
RUN npm install express
COPY . /app
RUN apk add --no-cache xdg-utils
CMD [ "npm", "start" ]
EXPOSE 8083
