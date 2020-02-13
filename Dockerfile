FROM fedora
MAINTAINER anauska "anauska"
RUN yum install httpd -y
# this is apache httpd web server
WORKDIR /var/www/html
ADD . .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
# we cannot write systemctl start command here because containers can't use it
