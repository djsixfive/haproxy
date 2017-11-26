FROM oraclelinux:7
RUN yum install haproxy -y
#COPY haproxy.cfg /etc/haproxy/haproxy.cfg
EXPOSE 80
EXPOSE 443
ENTRYPOINT /usr/sbin/haproxy
CMD /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg -db

