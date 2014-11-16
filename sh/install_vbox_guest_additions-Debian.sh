# Without libdbus virtualbox would not start automatically after compile
apt-get -y install --no-install-recommends libdbus-1-3

# Remove existing VirtualBox guest additions
/etc/init.d/virtualbox-ose-guest-utils stop
rmmod vboxguest
apt-get -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
apt-get -y install dkms
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev

# Install the VirtualBox guest additions
VBOX_VERSION=$(cat /tmp/.vbox_version)
VBOX_ISO=/tmp/VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# Cleanup
rm $VBOX_ISO
