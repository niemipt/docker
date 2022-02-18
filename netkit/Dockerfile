FROM alpine:edge

MAINTAINER petri.niemi@gmail.com

ENV NETKIT_INSTALL_DIR=/usr/local
ENV NETKIT_HOME=$NETKIT_INSTALL_DIR/netkit
ENV MANPATH=:$NETKIT_HOME/man
ENV PATH=$NETKIT_HOME/bin:$PATH

RUN \
	apk update && apk add \
	coreutils \
	tar \
	xterm

RUN wget \
	http://wiki.netkit.org/download/netkit/netkit-2.8.tar.bz2 \
	http://wiki.netkit.org/download/netkit-filesystem/netkit-filesystem-i386-F5.2.tar.bz2 \
	http://wiki.netkit.org/download/netkit-kernel/netkit-kernel-i386-K2.8.tar.bz2 \
	-P /tmp/

RUN \
	echo "bdfbd6554ef5ff4b95eead24898340cf /tmp/netkit-2.8.tar.bz2" > /tmp/netkit.md5 \
	&& echo "6421d699bdc5a8aba0681a78becd393f /tmp/netkit-filesystem-i386-F5.2.tar.bz2" >> /tmp/netkit.md5 \
	&& echo "1b4297abd1c29e6c4563be70f7480562 /tmp/netkit-kernel-i386-K2.8.tar.bz2" >> /tmp/netkit.md5 \
	&& md5sum -c /tmp/netkit.md5

RUN \
	mkdir -p $NETKIT_INSTALL_DIR \
	&& tar -xjf /tmp/netkit-2.8.tar.bz2 -C $NETKIT_INSTALL_DIR \
	&& tar -xjf /tmp/netkit-filesystem-i386-F5.2.tar.bz2 -C $NETKIT_INSTALL_DIR \
	&& tar -xjf /tmp/netkit-kernel-i386-K2.8.tar.bz2 -C $NETKIT_INSTALL_DIR

#RUN echo ". $NETKIT_HOME/bin/netkit_bash_completion" >> ~/.bashrc

#RUN cd $NETKIT_HOME && ./check_configuration.sh
