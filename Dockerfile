FROM node:10.16.0-alpine

WORKDIR /source/example

COPY package.json /source/example

RUN cd /source/example && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]