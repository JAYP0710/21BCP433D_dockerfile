FROM mongo-express:latest

WORKDIR /app

COPY . .

ENV ME_CONFIG_MONGODB_AUTH_USERNAME=admin
ENV ME_CONFIG_MONGODB_AUTH_PASSWORD=password
ENV ME_CONFIG_MONGODB_AUTH_DATABASE=db

RUN npm install 
EXPOSE 3000

CMD [ "node","server.js" ]