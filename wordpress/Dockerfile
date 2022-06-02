FROM wordpress:latest

WORKDIR /var/www/html
COPY wait-for-it.sh .

#RUN ls -la
RUN chmod a+x wait-for-it.sh

ENV ONRUN=/var/www/html/wait-for-it.sh