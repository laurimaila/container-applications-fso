FROM node:20

WORKDIR /app

ENV NODE_ENV=development

# Install node modules
COPY package-lock.json package.json ./
RUN npm i

# Copy application code
COPY . .

CMD npm run dev
