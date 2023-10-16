FROM node:20.3.0-slim

WORKDIR /app

ENV NODE_ENV=development

# Install node modules
COPY --link package-lock.json package.json ./
RUN npm i

# Copy application code
COPY --link . .

# Start the server by default, this can be overwritten at runtime
CMD npm run dev
