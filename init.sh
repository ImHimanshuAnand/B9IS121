#!/bin/bash -i
# # 

# echo "Bash Script has started running..."
# pwd
# ls
# cat /etc/os-release
# ifconfig

# # 
# python3 --version
# ansible --version
# docker --version

# # 
# sudo apt update
# sudo apt install software-properties-common
# sudo apt-add-repository --yes --update ppa:ansible/ansible
# sudo apt install ansible

#  
# sudo apt-get install sshpass
#
echo "-----Configure Ansible Hosts file-----" 
# echo "[myhosts]" | sudo tee -a /etc/ansible/hosts
# echo "hv7460.switzerlandnorth.cloudapp.azure.com ansible_ssh_user=hv7460 ansible_ssh_pass=Himanshu@12345" | sudo tee -a /etc/ansible/hosts
# BELOW 2 LINES COULD NOT APPEND TO ROOT ACCESS FILE. SO USE "tee" command
# echo "[myhosts]\n" > "/etc/ansible/hosts"
# echo "hv7460.switzerlandnorth.cloudapp.azure.com ansible_ssh_user=hv7460 ansible_ssh_pass=Himanshu@12345" >> >> "/etc/ansible/hosts"

# To Print - lines to decorate
# printf -- '-%.0s' {1..50}; echo ""

# Ansible Host Key checking False, for sshpass, to ssh using password instead of key
echo "-----Configure Ansible Config file-----" 
# echo "[defaults]" | sudo tee -a /etc/ansible/ansible.cfg
# echo "host_key_checking = False" | sudo tee -a /etc/ansible/ansible.cfg

# Ansible Ping hosts
# Note: Start Azure Host Machine (hv7460), if not, before running this commmand
# Note: Check Host Machine is up and running and not stopped!!
echo "-----Ansible Ping Hosts-----" 
ansible myhosts -m ping

# If Ping success run ansible-playbook
echo "----Running Ansible Playbook----"
# ansible-playbook docker_deploy.yml

# sudo apt install httping
# httping https://www.dictionary.com/browse/word
# man ping
# ping www.dictionary.com

echo "----Requested content of index.html from Host server----"
curl  http://hv7460.switzerlandnorth.cloudapp.azure.com
echo -e "\n----Script End----"
