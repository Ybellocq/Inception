FROM debian:bullseye

RUN apt-get update -y && \
    apt install mariadb-server -y

ADD 50-server.cnf /etc/mysql/mariadb.conf.d

EXPOSE 3306
COPY dock_mariadb.sh /usr/bin/dock_mariadb.sh
RUN chmod +x /usr/bin/dock_mariadb.sh
ENTRYPOINT ["bash", "dock_mariadb.sh"]
CMD ["mariadbd-safe"]
