FROM node:18.15.0-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]

EXPOSE 4200