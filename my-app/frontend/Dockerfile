# pull official base image
FROM node:16-alpine

# set working directory
WORKDIR /usr/src/app

# Copies package.json and package-lock.json to Docker environment
COPY package*.json ./

# Installs all node packages
RUN npm install

# Copies everything over to Docker environment
COPY . .

# Build for production.
RUN npm run build

# Run application
#CMD [ "npm", "start" ]
CMD npx serve -s build