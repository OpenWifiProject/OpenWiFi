FROM debian:jessie

WORKDIR /opt/openwifi
COPY openvpn.gpg .
RUN apt-key add openvpn.gpg \
	&& rm openvpn.gpg \
	&& echo "deb http://swupdate.openvpn.net/apt jessie main" > /etc/apt/sources.list.d/swupdate.openvpn.net.list \
	&& apt-get -y update && apt-get -y install \
	openvpn \
	iptables \
	&& rm -rf /var/lib/apt/lists/*

COPY bin .
COPY easy-rsa easy-rsa
CMD ["./run-server"]
