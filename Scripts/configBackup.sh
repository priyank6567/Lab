#!/bin/bash

# Backup DHCP,TFTP,xinetd,PXE Boot,FSTAB,LVM Config,FTP Dir Structure,NFS,HTTP,Running Services,Crontab
#rm -f /var/ftp/pub/Lab/Config_Backup//*
#cp   /var/ftp/pub/Lab/Config_Backup//

mkdir -p /var/ftp/pub/Lab/Config_Backup/dhcp
mkdir -p /var/ftp/pub/Lab/Config_Backup/tftp
mkdir -p /var/ftp/pub/Lab/Config_Backup/fstab
mkdir -p /var/ftp/pub/Lab/Config_Backup/ftp/pub/configFiles
mkdir -p /var/ftp/pub/Lab/Config_Backup/ftp/pub/ks
mkdir -p /var/ftp/pub/Lab/Config_Backup/ftp/pub/scripts


#DHCP Backup
#/etc/dhcp/dhcpd.conf
rm -f /var/ftp/pub/Lab/Config_Backup/dhcp/dhcpd.conf
cp /etc/dhcp/dhcpd.conf /var/ftp/pub/Lab/Config_Backup/DHCP

cat "/etc/dhcp/dhcpd.conf">/var/ftp/pub/Lab/Config_Backup/DHCP/Readme.txt

#Backup PXE Boot Configuration
#/etc/xinetd.d/tftp # /var/lib/tftpboot/ - dirstructure # 
rm -f /var/ftp/pub/Lab/Config_Backup/tftp/*
cp /etc/xinetd.d/tftp/pxelinux.cfg/* /var/ftp/pub/Lab/Config_Backup/tftp/
cat "/etc/xinetd.d/tftp/pxelinux.cfg/">/var/ftp/pub/Lab/Config_Backup/tftp/Readme.txt
cat "/etc/xinetd.d/tftp">/var/ftp/pub/Lab/Config_Backup/tftp/Readme.txt
cat "\n Dirstructure /etc/xinetd.d/tftp\n">/var/ftp/pub/Lab/Config_Backup/tftp/Tree.txt
tree /etc/xinetd.d/tftp | cat>>/var/ftp/pub/Lab/Config_Backup/tftp/Tree.txt




#Backup FSTAB
#/etc/fstab
rm -f /var/ftp/pub/Lab/Config_Backup/fstab/*
cp /etc/fstab /var/ftp/pub/Lab/Config_Backup/fstab/

#Backup FTP
#/etc/vsftpd/vsftpd.conf - # /var/ftp/ - Dir structure

rm -rf /var/ftp/pub/Lab/Config_Backup/ftp/*
cp /etc/vsftpd/vsftpd.conf /var/ftp/pub/Lab/Config_Backup/ftp/
cp -r /var/ftp/pub/configFiles/* /var/ftp/pub/Lab/Config_Backup/ftp/pub/configFiles/
cp -r /var/ftp/pub/ks/* /var/ftp/pub/Lab/Config_Backup/ftp/pub/ks/
cp -r /var/ftp/pub/scripts/* /var/ftp/pub/Lab/Config_Backup/ftp/pub/scripts/
cat "\n Dirstructure /var/ftp/\n">/var/ftp/pub/Lab/Config_Backup/ftp/Tree.txt
tree /var/ftp | cat>>/var/ftp/pub/Lab/Config_Backup/ftp/Tree.txt

#/etc/exports
rm -f /var/ftp/pub/Lab/Config_Backup/nfs/*
cp /etc/exports /var/ftp/pub/Lab/Config_Backup/nfs/

