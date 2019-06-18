FROM node:10

RUN curl -sSL https://get.docker.com | sh
RUN apt-get install --no-install-recommends -y \
  mongodb \
  redis-server \
  postgresql \
  postgresql-contrib

VOLUME /var/lib/docker
