FROM wordpress:latest

WORKDIR /var/www/html
COPY wait-for-it.sh .

#RUN ls -la
RUN chmod a+x wait-for-it.sh
ENTRYPOINT [ "bash" ]
RUN ./wait-for-it.sh