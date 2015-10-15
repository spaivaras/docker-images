#!/bin/bash

set -x
set -e

echo force-unsafe-io > /etc/dpkg/dpkg.cfg.d/02apt-speedup

apt-get update
apt-get upgrade -y


# install standard tools
apt-get install -y --no-install-recommends \
	bash-completion \
	bzip2 dnsutils \
	less \
	netcat-traditional \
	patch \
	telnet \
	time \
	traceroute \
	w3m \
	curl \
	wget \
	whiptail \
	whois \
	procps \
	net-tools


# install various helper tools
apt-get install -y --no-install-recommends \
	vim \
	nethogs \
	pv \
	git \
	rsync \
	iotop \
	sysstat \
	ngrep \
	mc \
	ca-certificates \
	sudo


# install acl to support advanced file permissions
apt-get install -y --no-install-recommends acl


# configure user
useradd -d /home/user -m -s /bin/bash -u 1000 -U user
echo 'user:user' | chpasswd
echo 'user ALL=NOPASSWD: ALL' >> /etc/sudoers


cp -frv /build/files/* /


source /usr/local/build_scripts/cleanup_apt.sh

