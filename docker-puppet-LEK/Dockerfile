FROM stackbrew/debian:jessie

MAINTAINER Vito Mule <mulevito@gmail.com>

ENV LOGSTASH_VERSION 1.4.2

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install openjdk-7-jre wget

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install nginx

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VERSION.tar.gz

RUN tar xzvf logstash-$LOGSTASH_VERSION.tar.gz

RUN mv logstash-$LOGSTASH_VERSION /opt/logstash

RUN adduser --system --disabled-login --no-create-home --group logstash 

RUN usermod -a -G adm logstash

RUN wget -O /etc/init.d/logstash https://raw.githubusercontent.com/elasticsearch/logstash/master/pkg/logstash.sysv

RUN chmod 755 /etc/init.d/logstash

RUN update-rc.d logstash defaults

RUN mkdir -p /etc/logstash/conf.d && mkdir /var/log/logstash && mkdir /var/lib/logstash

RUN chown -R logstash: /var/log/logstash && chown -R logstash: /var/lib/logstash

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb && dpkg -i elasticsearch-1.3.0.deb

RUN update-rc.d elasticsearch defaults 95 10

RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz && tar xzvf kibana-3.1.2.tar.gz

RUN cp -fr kibana-3.1.2/* /usr/share/nginx/html/ && rm -fr kibana-3.1.2 && rm -f kibana-3.1.2.tar.gz  


EXPOSE 80 


