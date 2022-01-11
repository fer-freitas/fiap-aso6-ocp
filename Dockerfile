FROM ubi8/ubi:8.3

MAINTAINER Lucas Leite  <megaluk23@gmail.com>

LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello Grupo 27 RM340642" > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]