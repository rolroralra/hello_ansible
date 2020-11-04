#!/bin/bash
echo
read -p "USERNAME: " USERNAME
echo
echo

ansible-playbook ../playbook/check_passwd_expiration.yaml --extra-vars="target_user=${USERNAME}"
