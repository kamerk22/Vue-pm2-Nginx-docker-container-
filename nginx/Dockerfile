FROM nginx:1.13.0

MAINTAINER Kashyap Merai kashyapk62@gmail.com

RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    ca-certificates \
    wget \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*
 
RUN mkdir /etc/nginx/certificates

RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN cat /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/certs"]
VOLUME ["/etc/nginx/sites-enabled"]

EXPOSE 80 443 
CMD service nginx start