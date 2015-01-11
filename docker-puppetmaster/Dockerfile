FROM vmule/puppet-apt

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppetmaster
RUN echo "dns_alt_names = puppet, puppetmaster, master" >> /etc/puppet/puppet.conf
RUN echo "server = puppet" >> /etc/puppet/puppet.conf
RUN echo "autosign = true" >> /etc/puppet/puppet.conf
RUN echo "\n[agent]\ncertname = puppetmaster" >> /etc/puppet/puppet.conf

VOLUME ["/var/test/puppet/manifests", "/etc/puppet/manifests"]
VOLUME ["/var/test/puppet/modules", "/etc/puppet/modules"]

EXPOSE 8140

ENTRYPOINT ["/usr/bin/puppet", "master", "--no-daemonize", "--verbose"]


