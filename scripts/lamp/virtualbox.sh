#
# Virtualbox steps.
#

apt-get update > /dev/null

# remove vbox kernel module
rmmod vboxguest

# remove virtualbox packages from official repo
apt-get purge --yes virtualbox-*

# install kernel source
apt-get install --yes --force-yes linux-headers-$(uname -r) xorg

# mount, run vbox guest additions and umount later
mount -o loop VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# restart vbox guest additions module
/etc/init.d/vboxadd start

# remove kernel source
apt-get remove --yes --force-yes linux-headers-$(uname -r) xorg

# remove all non-used packages
apt-get autoremove --purge --yes --force-yes

