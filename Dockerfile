FROM ubuntu:latest

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get install -y --no-install-recommends gnupg &&\    
    apt-get install -y default-jre &&\
    apt-get install -y git &&\
    apt-get install -y nano &&\
    apt-get install -y vim

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - &&\
    apt-get update &&\
    apt-get install -y --no-install-recommends nodejs

RUN rm -rf /var/lib/apt/lists/* &&\
    apt clean

#RUN a2enmod rewrite

# Define the ENV variable
#ENV php_conf /etc/php/7.4/fpm/php.ini
#RUN mkdir /home/projects
WORKDIR /home/projects/app

RUN chmod -R 777 /home/projects

# Expose Port for the Application 
EXPOSE 3010
