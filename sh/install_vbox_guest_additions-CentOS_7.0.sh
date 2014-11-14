#!/usr/bin/env bash

yum install -y kernel-devel
yum groupinstall -y "Development Tools"
# From https://www.centos.org/forums/viewtopic.php?f=48&t=47042
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
yum install epel-release-7-2.noarch.rpm
yum install dkms
echo -e "\nInstalling virtualbox guest additions..."
cd /tmp
mount -o loop VBoxGuestAdditions_4.3.14_RC1.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f VBoxGuestAdditions_4.3.14_RC1.iso
