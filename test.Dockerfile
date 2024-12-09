FROM node:lts-alpine
WORKDIR /test-project
COPY *.json ./
COPY *.js ./
