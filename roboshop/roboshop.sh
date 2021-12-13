#!/bin/bash

USER_UID=$(id -u)
if [ ${USER_UID} -ne 0 ]; then
  echo -e "\e[1;31mYou should be a root user to perform this script\e[0m"
  exit
fi

COMPONENT=$1
if [ -z "$COMPONENT" ]; then
  echo -e "\e[1;31mCOMPONENT Input Missing\e[0m"
  exit
fi

if [ ! -e COMPONENTS/${COMPONENT}.sh ]; then
  echo -e "\e[1;31mGiven component script does not exists\e[0m"
  exit
fi
bash components/${COMPONENT}.sh

