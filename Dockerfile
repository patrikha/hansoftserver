#
# Hansoft server Dockerfile
#
# https://github.com/patrikha/hansoftserver
#

# pull base image
FROM ubuntu

# install Hansoft server
RUN \
  apt-get install -y curl unzip && \
  cd /tmp && \
  curl -o HansoftServerX64.zip -A "Mozilla/5.0 (compatible; MSIE 7.01; Windows NT 5.0)" -L http://hansoft.com/downloads/latest-linux-server/ && \
  unzip HansoftServerX64.zip && \
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
