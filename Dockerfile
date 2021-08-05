FROM node:alpine

WORKDIR /app

ENV PATH app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . ./

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]