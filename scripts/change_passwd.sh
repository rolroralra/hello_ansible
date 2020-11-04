#!/bin/bash
MIN_LENGTH_PASSWORD=7

while true
do
  echo
  read -p "NEW PASSWORD: " -s NEW_PASSWORD
  echo
  echo

  if [ ${#NEW_PASSWORD} -lt ${MIN_LENGTH_PASSWORD} ]
  then
    echo "NEW PASSWORD should be equal or longer than legnth ${MIN_LENGTH_PASSWORD}"
    continue;
  else
    break;
  fi
done

ansible-playbook ../playbook/change_passwd.yaml --extra-vars="newpassword=${NEW_PASSWORD}"
