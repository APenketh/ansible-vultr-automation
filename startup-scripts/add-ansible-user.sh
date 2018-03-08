#!/bin/bash

#Add Ansible User To The System
adduser ansible

# Give Ansible User Sudo Permissions
echo "ansible ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers
visudo -cf /etc/sudoers

# Add required directory's for SSH Key access
mkdir /home/ansible/.ssh/
chmod 700 /home/ansible/.ssh/
touch /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/authorized_keys
chown -R ansible:ansible /home/ansible/.ssh/

# Add The Pub Key In For Ansible Access - Makre sure to replace this with your key!
echo "{replace_with_pub_key}" >> /home/ansible/.ssh/authorized_keys
