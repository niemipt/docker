FROM alpine:3.5

RUN \
# Install some building tools, version control and QT5 tools
apk add --no-cache \
	alpine-sdk cmake \
	subversion mercurial \
	qt5-qtbase-dev \
	qt5-qtscript-dev \
	qt5-qtwebkit-dev \
	qt5-qttools-dev && \
#
# Install dbus, gdal and proj4 from ’testing’ repository
apk add --no-cache --allow-untrusted \
	--repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
	dbus virtualgl gdal-dev proj4-dev xclock xeyes && \
#
# Get and build Routino
svn checkout http://routino.org/svn/tags/3.1.1/ /tmp/routino && \
	cd /tmp/routino && \
	make && make install && \
	cd && rm -fr /tmp/routino  && \
#
# Get and build QMapShack
hg clone https://bitbucket.org/maproom/qmapshack /tmp/qmapshack && \
	cd /tmp/qmapshack && hg pull && hg update "V 1.7.2" && \
	cmake . && make && make install && cd && rm -fr /tmp/qmapshack

ENV QT_XKB_CONFIG_ROOT /usr/share/X11/xkb
