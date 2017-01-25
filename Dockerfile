FROM node:4.7.0

MAINTAINER RAO VAKALAGADDA

ENV NODE_ENV=production
ENV PORT=3000

COPY /home/nbcutitans/services/demoservice /var/www


WORKDIR /var/www

RUN npm install
RUN npm install winston-mail

EXPOSE $PORT

ENTRYPOINT ["node","server.js"]
