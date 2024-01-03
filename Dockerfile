# Image de base
FROM ubuntu:18.04
# Maintainer de l'image
MAINTAINER howard225 (k.stephane090@gmail.com)
# Installation des dependances
RUN apt-get update
RUN apt-get install -y nginx
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
# Ajout du code
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
# Port exposé
EXPOSE 80
#Entrypoint
CMD ["nginx", "-g", "daemon off;"]

