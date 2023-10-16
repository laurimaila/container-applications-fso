FROM node:20

WORKDIR /app

ENV NODE_ENV=development

# Install node modules
COPY --link package-lock.json package.json ./
RUN npm i

# Copy application code
COPY --link . .

CMD npm run dev
