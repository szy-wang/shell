#!/bin/bash
#user:wang
dbauser=system
dbapasswd=hundsun_4U
user=$1
passwd=$2

sqlplus -S ${dbauser}/${dbapasswd} << EOF > /dev/null 
Create user ${user} Identified by ${passwd}
Default tablespace hsfa;
Alter user ${user} quota 0 on SYSTEM;
Grant connect,resource to ${user};
Grant unlimited tablespace to ${user};
Grant debug connect session to ${user};
Grant Create public Synonym to ${user};
Grant Create Synonym to ${user};
Grant create database link to ${user};
Grant create view to ${user};
Grant create materialized view to ${user};
alter system set deferred_segment_creation=false scope=both;
exit; 
EOF
