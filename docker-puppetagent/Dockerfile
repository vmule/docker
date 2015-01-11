FROM vmule/puppet-apt

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install puppet
RUN sed -i '/templatedir/d' /etc/puppet/puppet.conf
RUN echo "[agent]\ncertname = puppetagent" >> /etc/puppet/puppet.conf
RUN echo "server = puppet" >> /etc/puppet/puppet.conf

ENTRYPOINT ["/usr/bin/puppet", "agent", "-t", "--verbose", "--waitforcert", "30"]


