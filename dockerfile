FROM node:16.18.0

#Create app directory
WORKDIR /usr/src/index

#Install app deoendencies
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", 'index.js' ]