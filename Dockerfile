FROM centos:latest
RUN yum update -y && yum install httpd -y
VOLUME /var/www/html
COPY ./index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
CMD ["service" "httpd" "start"]                  
