# docker-express-vuejs

## 手順
- 下記のDockerfileでイメージビルド→コンテナ起動
  ```dockerfile
  FROM node:12.22.1-alpine

  WORKDIR /app

  COPY ./src/package.json ./src/yarn.lock ./src/server.js ./

  RUN yarn install

  RUN yarn global add @vue/cli
  ```
- コンテナに入り、下記コマンドを実行してVueプロジェクトを作成
  ```vue
  vue create vue_project --default
  ```
- リポジトリ内のDockerfileに書き換えて、再度イメージビルド→コンテナ再作成