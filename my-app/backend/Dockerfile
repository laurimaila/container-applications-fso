FROM node:16-alpine AS backend

WORKDIR /usr/src/backend

COPY package*.json .

RUN npm ci --production

COPY . .

CMD ["npm", "start"]