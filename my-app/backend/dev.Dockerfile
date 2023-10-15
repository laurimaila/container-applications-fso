FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json .

RUN npm ci --include=dev

COPY . .

CMD ["npm", "run", "dev"]