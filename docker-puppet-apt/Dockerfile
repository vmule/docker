FROM vmule/base

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install wget
RUN wget --no-check-certificate https://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update


