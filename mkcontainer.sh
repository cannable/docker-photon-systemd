docker run -d \
    --rm \
    --tmpfs /tmp \
    --tmpfs /run \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    --stop-signal SIGRTMIN+3 \
    --name lightwave-test \
    cannable/photon-systemd
