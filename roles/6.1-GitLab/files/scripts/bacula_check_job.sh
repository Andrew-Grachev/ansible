#!/bin/bash

dbuser=bacula
dbpassword=bacula
dbname=bacula
DBAddress="127.0.0.1"

get_job_param()
{
  arg1="name='$1'"
  if [ "$2" == "lastexecution" ]
  then
    arg2="EXTRACT(EPOCH FROM NOW()-EndTime)::integer"
  elif [ "$2" == "jobbytes" ]
  then
    arg1="name='$1' AND jobstatus='T' AND level='$3'"
    arg2=$2
  elif [ "$2" == "duration" ]
  then
    arg1="name='$1' AND jobstatus='T' AND level='$3'"
    arg2="EXTRACT(EPOCH FROM EndTime-StartTime)::integer"
  else
    arg2=$2
  fi
  status_job=$(export PGPASSWORD=$dbpassword && /usr/bin/psql -h$DBAddress -U$dbuser -d$dbname -t -c "SELECT $arg2 FROM Job WHERE $arg1 ORDER BY jobid DESC LIMIT 1 OFFSET 0"|xargs)
  echo $status_job
}

ISPOSTGRES=$(export PGPASSWORD=$dbpassword && /usr/bin/psql -h$DBAddress -U$dbuser -d$dbname -l 2> /dev/null|grep $dbname|xargs)
get_job_param $1 $2 $3
