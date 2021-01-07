#!/bin/bash
#user:wang
dbauser=system
dbapasswd=hundsun_4U
user=wang
filename=20200826.dmp
fromusername=HSFA_TEST
imp ${dbauser}/${dbapasswd} file=${filename} fromuser=${fromusername} touser=${user} log=log commit=y compile=n
