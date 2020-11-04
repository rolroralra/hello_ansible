#!/bin/bash
MIN_LENGTH_PASSWORD=7

echo
read -p "NEW USERNAME: " NEW_USERNAME
echo
echo

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


ansible-playbook ../playbook/add_user.yaml --extra-vars="new_username=${NEW_USERNAME}" --extra-vars="newpassword=${NEW_PASSWORD}"
