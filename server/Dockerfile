FROM node:16-alpine

RUN npm install -g nodemon

WORKDIR /appBack

COPY . /appBack/

RUN npm i

COPY . /appBack/

EXPOSE 8080
