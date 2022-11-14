ARG DB_VERSION
ARG DB_TYPE=mariadb
FROM ${DB_TYPE}:${DB_VERSION}

MAINTAINER slam

ARG INNODB_FLUSH_METHOD=O_DIRECT

RUN apt-get update && apt-get install -y wget
COPY restore.sh /restore.sh
RUN chmod +x /restore.sh

CMD ["mysqld", "--innodb-use-native-aio=0", "--ignore-db-dir=losf+found"]

EXPOSE 3306
