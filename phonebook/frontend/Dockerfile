FROM node:20

WORKDIR /app

ENV NODE_ENV=production

# Install node modules
COPY --link package-lock.json package.json ./
RUN npm i

# Copy application code
COPY --link . .

# Build application
RUN npm run build

CMD npx serve dist
