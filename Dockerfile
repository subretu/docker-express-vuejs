FROM node:12.22.1-alpine

WORKDIR /app

COPY ./src/package.json .
COPY ./src/yarn.lock .
COPY ./src/server.js .

RUN yarn install

CMD [ "node", "server.js" ]