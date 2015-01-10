FROM vmule/puppet-apt

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppetdb
RUN /bin/sed -i -e "s/# host = <host>/host = 0.0.0.0/g" /etc/puppetdb/conf.d/jetty.ini
RUN echo "server = puppetdb\nport = 8081\nsoft_write_failure = true" > /etc/puppet/puppetdv.conf


EXPOSE 8080
EXPOSE 8081
ENTRYPOINT ["/usr/sbin/puppetdb", "foreground"]


