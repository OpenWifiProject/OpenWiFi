FROM nginx
COPY www /usr/share/nginx/html/
COPY easy-rsa /opt/openWiFi/easy-rsa
COPY bin /opt/openWiFi/
WORKDIR /opt/openWiFi
CMD ["./run-server"]
