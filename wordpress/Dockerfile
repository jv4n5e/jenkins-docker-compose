FROM wordpress:latest

WORKDIR /
COPY wait-for-it.sh .

RUN sed -i "2r wait-for-it.sh" /usr/local/bin/docker-entrypoint.sh
RUN cat /usr/local/bin/docker-entrypoint.sh