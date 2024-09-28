FROM node:20.17.0-bookworm-slim
USER root

ADD . /app

WORKDIR /app

RUN npm install && npm install -g concurrently

RUN chown -R 1000:1000 /app
USER 1000
CMD npm start
