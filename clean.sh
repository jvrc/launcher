#!/bin/sh

_files="
	Task.*/omniorb-nameserver.log
	Task.*/omninames-*.bak
	Task.*/omninames-*.log
	Task.*/run.*.log
"

/bin/ls ${_files} >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "No such files."
  exit
fi

/bin/ls ${_files}
echo

while true;
do
  read -p "Do you wish to remove there files? [y/n] " yn
  case $yn in
    [Yy]* ) rm -f ${_files}; break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done
