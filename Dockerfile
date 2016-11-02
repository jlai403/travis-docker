FROM node:6

RUN mkdir -p /app

# Install app dependencies
# Runs `npm install` only when there are changes to package.json
COPY package.json /tmp/package.json
RUN cd /tmp && npm install
RUN cp -a /tmp/node_modules /app/

# Bundle app source
WORKDIR /app
COPY . /app
