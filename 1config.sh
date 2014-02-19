#!/bin/bash

#Add Cron entry for update.sh

cd /usr/Scripts/
wget ftp://192.168.0.1/pub/files/update.sh
chmod u+x update.sh



#Get & Run Puppet Script
