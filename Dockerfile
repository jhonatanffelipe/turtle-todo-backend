FROM node:16.17.1

WORKDIR /src/app/turtle-todo-backend

COPY ./package*.json ./

RUN apt-get update && \
  yarn && \
  yarn global add typescript

COPY . .

CMD ["yarn","dev"]