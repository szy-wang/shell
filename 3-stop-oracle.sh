date >> start.log
sqlplus system/hundsun_4U as sysdba << EOF >> start.log
shutdown immediate
exit;
EOF
date >> start.log

