FROM node:lts

RUN mkdir -p /usr/src/natours/

WORKDIR /usr/src/natours/

COPY package*.json ./
RUN npm i

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "build:js"]
CMD [ "npm", "run", "start:prod"]