FROM node:latest
RUN mkdir -p /home/node/app/build
COPY package.json /home/node/app
WORKDIR /home/node/app
RUN npm install pm2 -g
RUN npm install
