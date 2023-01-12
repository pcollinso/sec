ARG GLOBAL_VERSION
FROM thecodingmachine/php:7.3-v3-apache-node12
LABEL authors="imapro <pcollinsmb@gmail.com>"
USER root
WORKDIR /var/www/html/
COPY . /var/www/html/
RUN apt-get update && \
    apt-get install -y --no-install-recommends gnupg && \
    apt-get update
USER docker
