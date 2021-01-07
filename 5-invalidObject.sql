user=chen
passwd=chen
sqlplus ${user}/${passwd} << EOF 
@/home/oracle/shell/invalidObject.sql;
exit;
EOF
