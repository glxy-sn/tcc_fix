# syntax=docker/dockerfile:1

FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./client"]

RUN npm install --production

COPY . .

CMD ["node", "index.js"]