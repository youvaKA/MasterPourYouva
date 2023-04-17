FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN 
RUN npm i
#RUN mongod --dbpath server/config

# Bundle app source
COPY . .

EXPOSE 3001
CMD ["nodemon"]