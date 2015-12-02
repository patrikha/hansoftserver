#
# Hansoft server Dockerfile
#
# https://github.com/patrikha/hansoftserver
#

# pull base image
FROM ubuntu

# install Hansoft server
RUN \
  apt-get install -y wget unzip && \
  cd /tmp && \
  wget "http://cache.hansoft.se/Hansoft%20Server%209.1005%20Linux2.6%20x64.zip" && \
  unzip Hansoft\ Server\ 9.1005\ Linux2.6\ x64.zip && \
  cp -R HansoftServer /opt/
COPY server.config /opt/HansoftServer/
COPY Backup /opt/HansoftServer/
COPY run.sh /opt/HansoftServer/

# define working directory
WORKDIR /opt/HansoftServer

# define default run command
CMD ./run.sh

# expose Hansoft server port
EXPOSE 50256
