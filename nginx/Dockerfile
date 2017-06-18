FROM nginx:1.13.0

MAINTAINER Kashyap Merai kashyapk62@gmail.com

# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    ca-certificates \
    wget \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*
 
RUN mkdir /etc/nginx/certificates

#  default conf for proxy service
COPY default.conf /etc/nginx/conf.d/default.conf

# Volumes
VOLUME ["/etc/nginx/certs"]
VOLUME ["/etc/nginx/sites-enabled"]

# Port to expose
EXPOSE 80 443 
CMD ["nginx"]