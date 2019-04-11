#!/bin/sh

############################################################################################
USER_NAME="zabbix"
DBHOST="10.10.10.160"
DBNAME="zabbix"
DBPASSWORD="admin123@"
DBPORT="3306"
#############################################################################################
PATH_DIR="/root/zabbix"
Logfile="/root/zabbix/zabbix-backup.log"
Backupfile="/root/zabbix/backup-file"
TABLE=`cat $PATH_DIR/tables.txt`
mysqldump -u ${USER_NAME} -h ${DBHOST} -P ${DBPORT} -p${DBPASSWORD} ${DBNAME} ${TABLE} > $Backupfile/zabbix-`date +"%Y-%m-%d-%H-%M-%S"`.sql
[ "$?" == 0 ] && echo "zabbix-`date +"%Y-%m-%d-%H-%M-%S"`: Backup zabbix succeed"     >> ${Logfile}
[ "$?" != 0 ] && echo "zabbix-`date +"%Y-%m-%d-%H-%M-%S"`: Backup zabbix not succeed" >> ${Logfile}
cd ${Backupfile}
[ "$?" == 0 ] && rm -rf zabbix-$(date +"%Y-%m-%d" --date='5 days ago')*
