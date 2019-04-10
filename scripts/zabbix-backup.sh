#!/bin/sh

Mysql_User=zabbix

DBHost=localhost

DBName=zabbix

DBpassword=password123@

DBport=3306

PATH=/root/zabbix

Logfile=/root/zabbix/zabbix-backup.log

Backupfile=/root/zabbix/backup-file

if ( -e ${PATH}/tables.txt )
do
return 1
else
wget https://raw.githubusercontent.com/niemdinhtrong/ghichep-zabbix/master/scripts/tables.txt
fi
mysqldump -u ${Mysql_User} -h ${DBHost} -P ${DBport} -p${DBpassword} ${DBName} $(cat ${PATH}/tables.txt) > ${Backupfile}/zabbix-`date +"%Y-%m-%d-%H-%M-%S"`.sql
[ "$?" == 0 ] && echo "zabbix-`date +"%Y-%m-%d-%H-%M-%S"`: Backup zabbix succeed"     >> ${Logfile}
[ "$?" != 0 ] && echo "zabbix-`date +"%Y-%m-%d-%H-%M-%S"`: Backup zabbix not succeed" >> ${Logfile}
cd ${Backupfile}
[ "$?" == 0 ] && rm -rf zabbix-$(date +"%Y-%m-%d" --date='5 days ago')*
