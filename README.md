### Reference
* [https://www.wizardx.guru/](https://www.wizardx.guru/)
* [https://docs.ansible.com/](https://docs.ansible.com/)

---
### How to install Ansible
[https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)

---
### Kubespray = Kubernetes & Ansible Combination 

---
### Download ansible
[https://releases.ansible.com/ansible/](https://releases.ansible.com/ansible/)

---
## /etc/ansible/ansible.cfg
```bash
[ssh_connection]
ssh_args = -o UserKnownHostsFile=/dev/null -o ControlMaster=no -C -o StrictHostKeyChecking=no
```

---
## /etc/ansible/hosts
```bash
[workers:vars]
ansible_connection=ssh
ansible_user=root
#ansible_ssh_pass=dbserverpasswd
#ansible_python_interpretor=/usr/bin/python

[workers]
worker01 target_user=rolroralra
worker02 ansible_ssh_host=worker02 ansible_become=true ansible_become_user=nexledger target_user=nexledger
worker02-rolroralra ansible_ssh_host=worker02 ansible_become=true ansible_become_user=nexledger target_user=rolroralra
```
