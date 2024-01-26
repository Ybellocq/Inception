FROM debian:bullseye

RUN apt-get update -y && \
    apt-get install -y nginx openssl && \
    mkdir -p /etc/nginx/ssl

ADD login.42.fr.conf /etc/nginx/conf.d/login.42.fr.conf

RUN openssl req -new -newkey rsa:4096 -days 365 -nodes \
    -x509 -subj "/C=FR/ST=France/L=Perpignan/O=42Perpignan/CN=ybellocq.42.fr" \
    -keyout /etc/ssl/certs/login.42.fr.key -out /etc/ssl/certs/login.42.fr.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

