FROM debian:bullseye-slim

ENV	DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8

ADD	http://pkg.yeti-switch.org/key.gpg /etc/apt/trusted.gpg.d/yeti.asc

RUN	echo "deb http://pkg.yeti-switch.org/debian/buster 1.12 main" >> /etc/apt/sources.list  && \
	chmod 644 /etc/apt/trusted.gpg.d/*.asc

RUN	apt update && apt install -y ca-certificates

RUN	apt update && apt install -y yeti-cli openssh-server
