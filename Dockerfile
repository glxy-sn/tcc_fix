# syntax=docker/dockerfile:1

FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["./client/package.json", "./client/package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 80

CMD ["node", "index.js"]