FROM ubuntu:16.04
RUN apt-get update && apt-get install nginx -y
COPY arquivo_teste /tmp/arquivo_teste
CMD bash

#FROM node
#WORKDIR /usr/src/app
#COPY package.json ./
#RUN npm install
#COPY . .
#EXPOSE 3000
#CMD [ "node", "index.js" ]
