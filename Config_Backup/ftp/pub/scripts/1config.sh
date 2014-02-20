#! /bin/bash

# Configure Yum Repositories
cd /etc/yum.repos.d
rm * -f
wget ftp://192.168.0.1/pub/configFiles/mainRepo.repo
wget ftp://192.168.0.1/pub/configFiles/myRepo.repo

#Set DHCP IP
#Set Hostname


