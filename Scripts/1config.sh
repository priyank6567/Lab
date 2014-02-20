
<!-- saved from url=(0040)ftp://192.168.0.1/pub/scripts/1config.sh -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">#! /bin/bash

# Configure Yum Repositories
cd /etc/yum.repos.d
rm * -f
wget ftp://192.168.0.1/pub/configFiles/mainRepo.repo
wget ftp://192.168.0.1/pub/configFiles/myRepo.repo

#Set DHCP IP
#Set Hostname


</pre></body></html>