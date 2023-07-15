FROM vmule/base

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install wget
RUN wget --no-check-certificate https://apt.puppetlabs.com/puppet-release-bullseye.deb
RUN dpkg -i puppet-release-bullseye.deb
RUN apt-get update
