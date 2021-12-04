#!/bin/sh
# bootstrap ansible user for executing playbooks
# copy to server and execute with root privileges
useradd -m -s /bin/bash ansible
echo -e "ansible\tALL=\(ALL\)\tNOPASSWD:\tALL" > /etc/sudoers.d/ansible
sudo -iu ansible ssh-keygen -b 2048 -t rsa /home/ansible/.ssh/id_rsa -n ""
sudo -iu ansible cat /home/ansible/ssh/id_rsa.pub