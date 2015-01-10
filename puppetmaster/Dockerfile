FROM debian:wheezy

MAINTAINER Vito Mule version 0.1

ENV hostname puppet

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppet puppetmaster
RUN echo "\ndns_alt_names = puppet, puppetmaster, master" >> /etc/puppet/puppet.conf
RUN echo "\nserver = puppet" >> /etc/puppet/puppet.conf

EXPOSE 8140
ENTRYPOINT ["/usr/bin/puppet", "master", "--no-daemonize", "--verbose"]

