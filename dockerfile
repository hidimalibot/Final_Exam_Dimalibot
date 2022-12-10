FROM ubuntu
MAINTAINER hidimalibot <qhidimalibot@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# install entrep service
RUN apt install -y apache2
# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
