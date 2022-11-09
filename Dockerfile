#FROM node:16 as base
FROM node:18-alpine
ENV DATABASE_URL=postgresql://postgres:Tw7qqa9TBayeDmRpGuPX@containers-us-west-28.railway.app:7499/railway
WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .
RUN npm run build
EXPOSE 4000
CMD [ "npm", "start"]
