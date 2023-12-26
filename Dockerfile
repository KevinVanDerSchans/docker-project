FROM node:13-alpine

ARG MONGO_DB_USERNAME
ARG MONGO_DB_PWD

ENV MONGO_DB_USERNAME=$MONGO_DB_USERNAME \
    MONGO_DB_PWD=$MONGO_DB_PWD

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

RUN npm install

CMD ["node", "server.cjs"]
