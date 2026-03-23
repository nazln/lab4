FROM ubuntu:latest

LABEL maintainer="Nazarii Loboda <s101741@pollub.edu.pl>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends apache2 \
    && rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
