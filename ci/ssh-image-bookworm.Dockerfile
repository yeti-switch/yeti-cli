FROM debian:bookworm-slim

ENV	DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8

RUN	apt update && apt -y dist-upgrade && apt install -y ca-certificates openssh-server

COPY	*.deb /
RUN	dpkg -i /*.deb || apt install -f -y --no-install-recommends && rm /*.deb

