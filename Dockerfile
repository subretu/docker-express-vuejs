FROM node:12.22.1-alpine

WORKDIR /app

COPY ./src/package.json ./src/yarn.lock ./src/server.js ./

COPY ./src/vue_project/ ./vue_project

RUN yarn install

RUN yarn global add @vue/cli

# コンテナ作成後にコマンド実行
#CMD [ "node", "server.js" ]

WORKDIR /app/vue_project

CMD ["yarn", "serve"]