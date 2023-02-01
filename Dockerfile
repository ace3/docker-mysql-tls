FROM mysql:5.7-debian

RUN apt-get update 
RUN apt-get install -y openssl
RUN chown mysql: /etc/mysql/mysql.conf.d/

ADD docker-entrypoint-initdb.d/run_rsa.sh /docker-entrypoint-initdb.d/

