
FROM jenkins/jenkins:lts

MAINTAINER admin@zuolinux.com
User root
RUN apt-get update && apt-get install -y rsync apt-utils libltdl7 maven && apt-get clean autoclean

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

#ADD ./src/apache-maven-3.3.3-bin.tar.gz /
#RUN mv /apache-maven-3.3.3 /usr/local/
RUN /sbin/ip route|awk '/default/ { print  $3,"\tdockerhost" }' >> /etc/hosts


ARG DOCKER_GID=999
#RUN groupadd docker
RUN usermod -aG docker jenkins

USER jenkins:${DOCKER_GID}
