FROM docker.io/httpd:2.4

COPY ./web/index.html /usr/local/apache2/htdocs/

EXPOSE 80