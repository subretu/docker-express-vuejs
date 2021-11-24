FROM node:12.22.1-alpine

WORKDIR /app

COPY ./src/package.json ./src/yarn.lock ./src/server.js ./

RUN yarn install

CMD [ "node", "server.js" ]