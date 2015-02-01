FROM vmule/base

MAINTAINER Vito Mule <mulevito@gmail.com>

ENV LS_V 1.4.2

ENV ES_V 1.4.0

ENV KIB_V 3.1.2

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install openjdk-7-jre wget

RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install nginx

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-$LS_V.tar.gz

RUN tar xzvf logstash-$LS_V.tar.gz && rm -f logstash-$LS_V.tar.gz

RUN mv logstash-$LS_V /opt/logstash

RUN adduser --system --disabled-login --no-create-home --group logstash 

RUN usermod -a -G adm logstash

RUN wget -O /etc/init.d/logstash https://raw.githubusercontent.com/elasticsearch/logstash/master/pkg/logstash.sysv

RUN chmod 755 /etc/init.d/logstash

RUN mkdir -p /etc/logstash/conf.d && mkdir /var/log/logstash && mkdir /var/lib/logstash

RUN chown -R logstash: /var/log/logstash && chown -R logstash: /var/lib/logstash

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_V.deb && dpkg -i elasticsearch-$ES_V.deb

RUN rm -f elasticsearch-$ES_V.deb

RUN echo "http.cors.enabled: true" >> /etc/elasticsearch/elasticsearch.yml

RUN echo "http.cors.allow-origin: "/.*/" " >> /etc/elasticsearch/elasticsearch.yml 

RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIB_V.tar.gz && tar xzvf kibana-$KIB_V.tar.gz

RUN rm -fr /usr/share/nginx/www/*

RUN cp -fr kibana-$KIB_V/* /usr/share/nginx/www/ && rm -fr kibana-$KIB_V && rm -f kibana-$KIB_V.tar.gz  

RUN chmod -R 755 /usr/share/nginx/www

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD run.sh /usr/local/bin/run

ADD puppetlogs.conf /etc/logstash/conf.d/

RUN chmod 755 /usr/local/bin/run

EXPOSE 80 9200 514 9292 9300

ENTRYPOINT ["/usr/local/bin/run"]
