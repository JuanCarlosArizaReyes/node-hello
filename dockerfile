ARG PORT=3001
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE ${PORT}
ENV PORT ${PORT}
CMD node index.js
