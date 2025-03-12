#!/bin/bash
file="/tmp/jobs_discovery_lld.txt"
IFS=$'\n'

generate_zabbix_json()
{
  echo -e "{" > $file
  echo -e "\t\"data\":[" >> $file
  first=1
  for i in $*
  do
    if [ $first == 0 ]
    then
      echo -e "\t," >> $file
    fi
    first=0
    echo -e "\t{\"{#JOB}\":\"$i\"}" >> $file
  done
  echo -e "\t]" >> $file
  echo -e "}" >> $file
}

generate_zabbix_json $(echo "show job"|bconsole|grep Job: | cut -d= -f2- |sed 's/ JobType.*//' | while read LINE;do echo $LINE;done)
cat $file
rm -f $file
