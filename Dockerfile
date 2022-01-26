FROM node:14

WORKDIR /usr/src/app

COPY my-react-app-jenkins-and-docker/package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]