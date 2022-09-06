FROM node:lts-alpine

COPY package.json /

RUN npm install

WORKDIR /app

COPY . /app

CMD ["npm", "start"]
