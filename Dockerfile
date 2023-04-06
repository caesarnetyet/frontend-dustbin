FROM node:18.15.0-alpine

WORKDIR /app

RUN npm install -g @angular/cli

COPY package.json package-lock.json ./

RUN npm install

COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]

EXPOSE 4200