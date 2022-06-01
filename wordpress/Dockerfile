FROM wordpress:latest

WORKDIR /var/www/html
COPY wait-for-it.sh .

RUN touch test.txt
RUN chmod a+x wait-for-it.sh