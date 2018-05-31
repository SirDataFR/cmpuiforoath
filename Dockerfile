FROM node:9-alpine

#docker build -t cpm/front .
#docker run -p 8081:8081  cpm/front

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN npm install
EXPOSE 8081
ENTRYPOINT npm start