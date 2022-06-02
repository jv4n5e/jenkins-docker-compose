FROM wordpress:latest

WORKDIR /
COPY wait-for-it.sh .

RUN sed -i "3r wait-for-it.sh" /usr/local/bin/docker-entrypoint.sh