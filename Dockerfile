FROM node:lts-alpine

RUN npm install -g http-server
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

EXPOSE $WEBPORT
CMD http-server dist -p $WEBPORT
