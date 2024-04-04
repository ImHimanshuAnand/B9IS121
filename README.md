# Module: B9IS121 - Network Systems and Administration
# Purpose: Create an Ansible Playbook that will configure Docker container and deploy apache server with webpage running on 172.168.10.0/30 subnet

# Instructions
This playbook was first tested and implemented on localhost (Ubuntu 22.04LTS WSL for Windows 10)  
secondly, it was implemented on Azure VM (for students plan)  
thirdly, it was improved using Bash script in Github Codespaces (To avoid installing Linux Machine for Control Node) 
The below steps will guide you using the third way i.e. using github codespaces

# STEPS: (For Ubuntu 20.04 LTS using Github Codespaces)
1. Create Azure VM (Ubuntu 22.04 LTS). (Azure for students offers limited free hours on cloud)
2. Setup DNS name and Start VM
3. Open Github Codespaces
4. Run bash script
5. Check web page in browser

## STEP 1: Create Azure VM
![screencapture-portal-azure-2024-04-05-00_08_02](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/3459eeb2-b663-433a-8804-c8d15e2b7c5a)
![screencapture-portal-azure-2024-04-05-00_08_02](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/d2797197-de9a-4f3a-908c-9bae308f7f1a)

## STEP 2: Setup DNS name and Start VM
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/be0e49ff-2804-499d-9ca8-f6ed3f57fb5e)
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/8722dd83-697e-4730-a1a4-11e3ee83b50d)

## STEP 3: Open Codespaces
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/c7a9a50f-ec9e-4302-9dde-7c4039f1fde9)
### Press Continue working in codespaces and select 2GB and 16GB option
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/8dd5252f-4d35-42c9-b728-140a88ae6436)

## STEP 4: Run $ bash init.sh
![screencapture-fictional-space-eureka-7467v6pw7xqcr6qj-github-dev-2024-04-05-00_23_44](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/e0e19a9c-8a41-4e83-b939-9dbf051774c2)

## STEP 5: Check Webpage in Browser
### 1. Using Public IP Address:
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/f3b68fc2-7074-477a-be48-a39d747aa9a4)
### 2. Using Domain name:
![image](https://github.com/ImHimanshuAnand/B9IS121_2324_TMD2/assets/93127466/f3f226c0-abc5-4544-b718-534671f85b90)


# References:
- Learn Markdown syntax : https://www.markdownguide.org/cheat-sheet/
- Learn Bash Script: https://linuxconfig.org/how-to-write-a-bash-script-to-run-commands 
- Use github actions for ansible: https://stackoverflow.com/questions/74048180/how-to-run-ansible-playbook-from-github-actions-without-using-external-action
- Github action extension for ansible: https://github.com/marketplace/actions/run-ansible-playbook
- Ansible "copy" module: https://kodekloud.com/blog/ansible-copy/#ansible-copy
- Run bash script interactive: https://unix.stackexchange.com/questions/569445/is-possible-to-define-a-bash-script-to-run-interactively-by-default
- Verbose, Interactive, Help, Version
- Bash Append to file: https://www.heatware.net/linux-tips/linux-append-to-file-bash-linux/
- Append to text file: https://stackoverflow.com/questions/6207573/how-to-append-output-to-the-end-of-a-text-file
- Append to Root Access File: https://superuser.com/questions/1217397/how-to-append-text-to-the-end-of-a-file-as-root-user
- Ansible turn off Host key checking: https://stackoverflow.com/questions/23074412/how-to-set-host-key-checking-false-in-ansible-inventory-file
- Ansible Playbook Docs: https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html
- Undo Git Pull or Git Push: https://stackoverflow.com/questions/21437647/how-to-undo-git-pull-or-git-push
