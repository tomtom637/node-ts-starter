# BUILD STEP:
FROM node:18.17.0-alpine AS build
COPY . /home/node/app
WORKDIR /home/node/app
RUN npm install typescript -g && \
npm install --production && \
tsc --project tsconfig.prod.json

# GENERATE IMAGE:
FROM node:18.17.0-alpine AS image
WORKDIR /home/node/app
COPY package*.json .
RUN npm install --production && \
npm install pm2 -g
COPY --from=build /home/node/app/build .