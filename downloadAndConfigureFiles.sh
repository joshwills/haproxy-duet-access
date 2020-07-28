# 7/28/2020 a quick script to download and install the relevant haproxy configuration files for redirecting external access to the Duet.  Can be run with the following line:
# wget https://raw.githubusercontent.com/joshwills/haproxy-duet-access/master/downloadAndConfigureFiles.sh && sudo bash downloadAndConfigureFiles.sh
# Yes, this is very brittle, and yes, this is technically probably not the best way to go about performing administrative actions like this.  That's it - no excuses, just stating that I'm aware of some of the risks and issues, but doing it anyway.
# Potential improvements - check that we're on a Pi image and configuration that we expect; the "sudo service haproxy stop" helps a bit, as it will prevent further actions if haproxy isn't installed or can't be stopped for some reason.

wget https://raw.githubusercontent.com/joshwills/haproxy-duet-access/master/haproxy.cfg && \
wget https://raw.githubusercontent.com/joshwills/haproxy-duet-access/master/503-no-duet.http && \
sudo service haproxy stop && \
sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.backup-$(date +%Y-%m-%d_%H-%M-%S) && \
sudo mv haproxy.cfg /etc/haproxy/ && \
sudo mv 503-no-duet.http /etc/haproxy/errors/ && \
sudo service haproxy start
