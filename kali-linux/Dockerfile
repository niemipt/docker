FROM kalilinux/kali-linux-docker

MAINTAINER petri.niemi@gmail.com

RUN \
#Add Oracle java repositories
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list && \
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
#Accept license
        echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
#Update and install some stuff
	apt-get update && \
	apt-get install -y \
#Install Oracle java
		oracle-java8-installer \
#Install some kali-tools
                kali-desktop-xfce \
                kali-linux-top10 \
                kali-linux-web \
                kali-linux-pwtools \
		armitage && \
#Set Oracle java as default
	update-java-alternatives -s java-8-oracle

EXPOSE 50050 55553 80 8080 443 5901
