FROM node:10.16.0-alpine

WORKDIR /source/cicdtest

COPY package.json /source/cicdtest

RUN cd /source/cicdtest && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]