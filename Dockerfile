FROM node:lts-alpine

WORKDIR /app

COPY package*.json .

RUN npm i

COPY . .

ENV NODE_ENV=production

EXPOSE 7000

CMD npm run start
