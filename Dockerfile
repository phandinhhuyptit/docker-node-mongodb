FROM node:10
WORKDIR /usr/src/app
RUN npm i -g yarn 
COPY package.json .
RUN yarn install 
COPY . .
EXPOSE 3000
CMD ["yarn","start"]
