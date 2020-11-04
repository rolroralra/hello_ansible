#!/bin/bash
echo
read -p "DELETE USERNAME: " DELETE_USERNAME
echo
echo

ansible-playbook ../playbook/remove_user.yaml --extra-vars="delete_username=${DELETE_USERNAME}"
