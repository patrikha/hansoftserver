FROM ubuntu
MAINTAINER patrik.hartlen@gmail.com
COPY HansoftServer /opt/HansoftServer
COPY server.config /opt/HansoftServer/
COPY Backup /opt/HansoftServer/
COPY run.sh /opt/HansoftServer/
WORKDIR /opt/HansoftServer
CMD ./run.sh
