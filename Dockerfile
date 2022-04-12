FROM ubi8
LABEL description="hello image"
MAINTAINER steven wu steven.wu@ontario.ca
RUN yum install -y httpd && \
yum clean all
EXPOSE 80
ENV LogLevel "info"
RUN echo "hello y" > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]
