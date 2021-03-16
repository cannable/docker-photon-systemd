FROM photon:4.0
RUN tdnf makecache && \
	tdnf install -y systemd && \
	tdnf clean all
ENV NAME photon-systemd
STOPSIGNAL SIGRTMIN+3
CMD ["/sbin/init"]

