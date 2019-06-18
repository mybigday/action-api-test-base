FROM node:10

RUN curl -sSL https://get.docker.com | sh
RUN apt-get install mongodb redis-server postgresql postgresql-contrib -y

VOLUME /var/lib/docker
