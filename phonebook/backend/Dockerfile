FROM node:20.3.0-slim

WORKDIR /app

ENV NODE_ENV=production

# Install node modules
COPY --link package-lock.json package.json ./
RUN npm ci --only=production

# Copy application code
COPY --link . .

# Remove development dependencies
RUN npm prune --omit=dev

# Start the server by default, this can be overwritten at runtime
CMD [ "npm", "start"]
