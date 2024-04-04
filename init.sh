# !/bin/bash -i
# Above line is called Hashbang, to indicate which interpreter should be used to execute the given script

echo "Bash Script has started running..."

# Check System Config and Info and Present Working Directory
pwd
ls
cat /etc/os-release
ifconfig

# Check Versions, if installed
echo "----Check Version----"
python3 --version
ansible --version
docker --version

# Update Ubuntu repo list and install ansible
echo "----Update Repo List----"
sudo apt update
sudo apt install software-properties-common
echo "----Install Ansible----"
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

echo "----Install SSH PASS----"
# Automation: To use password authentication,but in non-interactive mode i.e as parameter to the script
sudo apt-get install sshpass

echo "----Configure Ansible Inventory File----"
# Add Host Node info to ansible's inventory file
echo "-----Configure Ansible Hosts file-----" 
echo "[myhosts]" | sudo tee -a /etc/ansible/hosts
echo "hv7460.switzerlandnorth.cloudapp.azure.com ansible_ssh_user=hv7460 ansible_ssh_pass=Himanshu@12345" | sudo tee -a /etc/ansible/hosts
# BELOW 2 LINES COULD NOT APPEND TO ROOT ACCESS FILE. SO USE "tee" command
# echo "[myhosts]\n" > "/etc/ansible/hosts"
# echo "hv7460.switzerlandnorth.cloudapp.azure.com ansible_ssh_user=hv7460 ansible_ssh_pass=Himanshu@12345" >> >> "/etc/ansible/hosts"

# IGNORE, To Print - lines to decorate
# printf -- '-%.0s' {1..50}; echo ""

echo "----Configure Host key checking to false----"
# Ansible Host Key checking False, for sshpass, to ssh using password instead of key
echo "-----Configure Ansible Config file-----" 
echo "[defaults]" | sudo tee -a /etc/ansible/ansible.cfg
echo "host_key_checking = False" | sudo tee -a /etc/ansible/ansible.cfg

# Ansible Ping hosts by group or all hosts
echo "----Ping Connection to Host Node----"
# Note: Start Azure Host Machine (hv7460), if not, before running this commmand
# Note: Check Host Machine is up and running and not stopped!!
ansible myhosts -m ping

# If Ping success run ansible-playbook
echo "----Running Ansible Playbook----"
ansible-playbook docker_deploy.yml

# IGNORE
# sudo apt install httping
# httping https://www.dictionary.com/browse/word
# man ping
# ping www.dictionary.com

# IGNORE
# echo "----Requested content of index.html from Host server----"
# Implemented in Ansible Playbook so no need
# curl  http://hv7460.switzerlandnorth.cloudapp.azure.com
# echo -e "\n----Script End----"
