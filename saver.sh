#!/usr/bin/env bash

USER="root"
IP="163.172.39.22"
PORT='3306'
PASSWORD="victor1993"

#databases=`mysql -h $IP -P $PORT -u $USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`

mysql -h $IP -P $PORT -u $USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database

# for db in $databases; do
#     if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] ; then
#         echo "Dumping database: $db"
#         mysqldump -u $USER -p$PASSWORD --databases $db > ./save/`date +%Y%m%d`.$db.sql
#     fi
# done
