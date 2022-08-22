FROM node:16

WORKDIR /app
# if something changes in any one of this layers docker re runs everything after that line so you want to make sure you install 
# packages first before copying the app
COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]