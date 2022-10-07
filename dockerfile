ARG PORT=3001
FROM node:18-alpine
WORKDIR /app
COPY . .
EXPOSE ${PORT}
ENV PORT ${PORT}
CMD node index.js
