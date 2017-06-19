FROM node:8-alpine
MAINTAINER Kashyap Merai kashyapk62@gmail.com

RUN npm install pm2 -g

VOLUME ["/app"]

EXPOSE 80 443 43554

WORKDIR /app

CMD ["pm2-docker", "start", "--auto-exit", "--env", "production"]