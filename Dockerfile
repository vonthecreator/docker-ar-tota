FROM node:18


# api directory
WORKDIR /usr/src/api


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


RUN npm install
COPY . .

EXPOSE 8080 
#expose the api to port 8080 --> env vars


CMD [ "node", "server.js" ]
