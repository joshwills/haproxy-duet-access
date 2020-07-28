wget https://raw.githubusercontent.com/joshwills/haproxy-duet-access/master/haproxy.cfg && \
wget https://raw.githubusercontent.com/joshwills/haproxy-duet-access/master/503-no-duet.http && \
sudo service haproxy stop && \
sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.backup-$(date +%Y-%m-%d_%H-%M-%S) && \
sudo mv haproxy.cfg /etc/haproxy/ && \
sudo mv 503-no-duet.http /etc/haproxy/errors/ && \
sudo service haproxy start
