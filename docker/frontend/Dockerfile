FROM node:14-alpine as base

RUN mkdir -p /var/www/html/techblog/frontend
WORKDIR /var/www/html/techblog/frontend
COPY . .
RUN npm install
CMD [ "npm", "start" ]