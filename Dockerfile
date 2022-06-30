FROM node:alpine

COPY package*.json ./

WORKDIR /app

copy . .

RUN npm ci --omit=dev

CMD ["node", "server.js"]
