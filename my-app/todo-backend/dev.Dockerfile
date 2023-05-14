# Replaced with commands in compose-file

FROM node:16

WORKDIR /usr/src/app

COPY --chown=node:node  . /usr/src/app/

RUN npm install

CMD ["npm", "run", "dev"]