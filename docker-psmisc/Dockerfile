FROM vmule/base

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install psmisc

ENTRYPOINT ["pslog", "-V"]
