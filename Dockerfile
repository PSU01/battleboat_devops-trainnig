FROM ubuntu
#Maintenair
MAINTAINER Patrick SUNDAY
LABEL maintainer="patricsunday@gmail.com"
#install update
RUN apt-get update
RUN apt-get install -y nginx
#COPY SOURCE CODE IN THE IMAGE
COPY  ./battleboat/ /var/www/html
#RUN CODE
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
#EXPOSE CODE
EXPOSE 80
