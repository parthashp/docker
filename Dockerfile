FROM centos:latest
MAINTAINER Parthasarathi
RUN yum -y install httpd
COPY index.html /var/www/html/
# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 80
