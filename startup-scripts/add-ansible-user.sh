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

# Add The Pub Key In For Ansible Access
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIDlsVrbhTgr7edBgsx3RYHhSWxPbN/RgoqMGfdFjVq6zJ9pDva5/zoPuKEsUHRcRDiBFY1ohR0693oNFSjmgHaWHjQFo42n954HIopoUlAkgrhmj3UsLK0WewtHCDB9Of04HGKoRfyxvXMvdteBeUyb3+hqmmy/rjrZQPuq7Psi451jfKnQoWT/gfh9wN09SIS9JWXx/gxkDZnj30miKUxwSfAxro0ZJ0R2EE0AySnwLmwV4uwdCHMuDMTmJjAV9LDbvDuAiugwo5Umrng4f2WGz6/gxy6J+25jcDcgi33qnonPXFvsBNuAuoyL/BxgtzJwsTK4HLsJQLjfG4g/aN root@ovh-twr01" >> /home/ansible/.ssh/authorized_keys
