FROM wordpress:latest

WORKDIR /var/www/html
COPY wait-for-it.sh .

#RUN ls -la
RUN chmod a+x wait-for-it.sh
RUN cat wait-for-it.sh | cat - /usr/local/bin/docker-entrypoint.sh > temp && mv temp /usr/local/bin/docker-entrypoint.sh -f