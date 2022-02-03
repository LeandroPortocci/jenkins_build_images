FROM ubuntu:16.04
RUN apt-get update && apt-get install httpd -y
COPY arquivo_teste /tmp/arquivo_teste
CMD bash