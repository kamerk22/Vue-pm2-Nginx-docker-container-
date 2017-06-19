FROM node:8-alpine
MAINTAINER Kashyap Merai kashyapk62@gmail.com

RUN npm install pm2 -g

VOLUME ["/app"]

EXPOSE 80 443 43554

WORKDIR /app

RUN npm install

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5000

CMD ["pm2-docker", "start", "--auto-exit", "--env", "production", "process.json"]