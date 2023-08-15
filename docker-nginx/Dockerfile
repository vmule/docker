FROM vmule/base

MAINTAINER Vito Mule <mulevito@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -qy install nginx-full

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80      

   ENTRYPOINT ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
