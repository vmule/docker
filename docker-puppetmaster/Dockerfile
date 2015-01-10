FROM vmule/puppet-apt

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppetmaster
RUN echo "dns_alt_names = puppet,puppetmaster,master" >> /etc/puppet/puppet.conf
RUN echo "server = puppet" >> /etc/puppet/puppet.conf
RUN echo "[agent]\ncertname = puppetmaster" >> /etc/puppet/puppet.conf

EXPOSE 8140
ENTRYPOINT ["/usr/bin/puppet", "master", "--no-daemonize", "--verbose"]


