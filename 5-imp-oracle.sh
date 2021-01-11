#!/bin/bash
#user:wang
dbauser=system
dbapasswd=hundsun_4U
fromusername=$1
user=$2
filename=$3
imp ${dbauser}/${dbapasswd} file=${filename} fromuser=${fromusername} touser=${user} log=log commit=y compile=n
