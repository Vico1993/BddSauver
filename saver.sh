#!/usr/bin/env bash

#Load Variable local in config.cfg
source ./config.cfg

databases=`mysql -h $IP -P $PORT -u $USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`

# mysql -h $IP -P $PORT -u $USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database

for db in $databases; do
    if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "sys" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] ; then
        echo "Dumping database: $db"
        mysqldump -u $USER -h $IP -P $PORT --password=$PASSWORD --databases $db > /home/vico/save_bdd/`date +%Y%m%d`.$db.sql
    fi
done
