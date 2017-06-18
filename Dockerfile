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


# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN cat /etc/nginx/nginx.conf

# Volumes
VOLUME ["/etc/nginx/certs"]
VOLUME ["/etc/nginx/sites-enabled"]

# Port to expose
EXPOSE 80 443 
CMD service nginx start