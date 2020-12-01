#!/bin/bash

# This shellscript is dependent on "yq"
which yq 2>&1 >/dev/null
if [ $? -ne 0 ]
then
  echo "[ERROR] There is no \"yq\". Please install yq. (https://github.com/mikefarah/yq/releases)"
  exit 1
fi

PLAYBOOK_FILE_PATH="../playbook/package_patch.yaml"

PACKAGE_NAME=$(cat ${PLAYBOOK_FILE_PATH} | yq r - ".vars.package_name")
PACKAGE_FILENAME=$(cat ${PLAYBOOK_FILE_PATH} | yq r - ".vars.package_filename")

while true
do
  echo
  echo "PACKAGE_NAME: ${PACKAGE_NAME}"
  echo "PACKAGE_FILENAME: ${PACKAGE_FILENAME}"
  
  echo
  read -p "Do you want execution? (y/n): " INPUT
  
  if [ ${INPUT} == "y" -o ${INPUT} == "Y" ]
  then
    break
  elif [ ${INPUT} == "n" -o ${INPUT} == "N" ]
  then
    echo
    exit 1
  else
    echo
  fi
done

echo

ansible-playbook ../playbook/package_patch.yaml --step
