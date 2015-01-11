FROM stackbrew/debian:jessie

MAINTAINER Vito Mule <mulevito@gmail.com>

ENV LOGSTASH_VERSION 1.4.2

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install openjdk-7-jre wget

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VERSION.tar.gz

RUN tar xzvf logstash-$LOGSTASH_VERSION.tar.gz

RUN mv logstash-$LOGSTASH_VERSION /opt/logstash

RUN adduser --system --disabled-login --no-create-home --group logstash 

RUN usermod -a -G adm logstash

RUN wget -O /etc/init.d/logstash https://raw.githubusercontent.com/elasticsearch/logstash/master/pkg/logstash.sysv && chmod 755 /etc/init.d/logstash

RUN mkdir -p /etc/logstash/conf.d && mkdir /var/log/logstash && mkdir /var/lib/logstash

RUN chown -R logstash: /var/log/logstash && chown -R logstash: /var/lib/logstash

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb && dpkg -i elasticsearch-1.3.0.deb

RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz && tar xzvf kibana-3.1.2.tar.gz

RUN cp -fr kibana-3.1.2/* /usr/share/nginx/html/ && rm -fr kibana-3.1.2 && rm -f kibana-3.1.2.tar.gz  

ADD run.sh /usr/local/bin/run

RUN chmod +x /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]

EXPOSE 80 


