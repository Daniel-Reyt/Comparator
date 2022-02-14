FROM mariadb:10.4
ADD ./init /docker-entrypoint-initdb.d
COPY ./utf8.cnf /etc/mysql/mariadb.conf.d/

#to ease database loading on some computers
ENV MYSQL_INITDB_SKIP_TZINFO 1
