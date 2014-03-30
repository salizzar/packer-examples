#
# Vagrant steps.
#

# create group admin
groupadd admin

# change vagrant to group admin
usermod -g admin vagrant

# use default keys from mitchell
VAGRANT_PUBKEY_URL='https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'

# download vagrant pubkey
mkdir -pm 700     /home/vagrant/.ssh
curl -Lo          /home/vagrant/.ssh/authorized_keys $VAGRANT_PUBKEY_URL

# set ownership
chown -R vagrant. /home/vagrant/.ssh /home/vagrant/.ssh/authorized_keys
chmod 0600        /home/vagrant/.ssh/authorized_keys

