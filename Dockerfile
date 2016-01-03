FROM oraclelinux:7.2

MAINTAINER Timothy Langford <tim.langford@oracle.com>

RUN yum install -y net-tools nc curl

# Install MongoDB 3.0.8
COPY build/mongodb.repo /etc/yum.repos.d/mongodb-org-3.0.repo

# RUN yum -y install -y mongodb-org # Install latest from meta package
RUN yum install -y \
  mongodb-org-3.0.8 \
  mongodb-org-server-3.0.8 \
  mongodb-org-shell-3.0.8 \
  mongodb-org-mongos-3.0.8 \
  mongodb-org-tools-3.0.8

# Configure an mongodb user
# RUN groupadd mongodb
# RUN adduser -D -g mongodb
# RUN chown -R mongodb /var/lib/mongo /var/lib/mongo
# RUN chown -R mongodb /var/log/mongodb /var/log/mongodb

COPY mongodb/etc/mongod.conf /etc/mongod.conf

VOLUME ["/var/lib/mongo"]
VOLUME ["/var/log/mongodb"]

EXPOSE 27017

# USER mongodb
CMD ["mongod", "--config", "/etc/mongod.conf"]
