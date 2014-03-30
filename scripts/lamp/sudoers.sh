#

# create file
echo '%admin ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# fix permission
chmod 0440 /etc/sudoers.d/vagrant

