FROM node:lts-alpine
WORKDIR /test-project
COPY *.json ./
COPY *.js ./
RUN npm ci
CMD ["node", "test.js"]
