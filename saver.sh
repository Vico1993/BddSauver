#!/usr/bin/env bash

#mysql -h 163.172.39.22 -P 3306 -u root --password=victor1993

USER="root"
IP="163.172.39.22"
PORT='3306'
PASSWORD="victor1993"

# databases=`mysql -h $IP -u $USER -p$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`
mysql -h $IP -u $USER -P $PORT --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database

# for db in $databases; do
#     if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] ; then
#         echo "Dumping database: $db"
#         mysqldump -u $USER -p$PASSWORD --databases $db > `date +%Y%m%d`.$db.sql
#        # gzip $OUTPUT/`date +%Y%m%d`.$db.sql
#     fi
# done
