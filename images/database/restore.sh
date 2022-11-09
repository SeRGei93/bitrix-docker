#!/bin/bash
MYSQL='mysql -u bitrix -pdb_pass bitrix'
DUMP_NAME=dump.sql.gz

read -r -p 'Download dump database? ' -i 'Y' -e DDB
if [ "${DDB}" == 'Y' ]; then
  read -r -p "url: "  DB_URL

  echo "Started download archive"
  START=$(date +%s)
  wget $DB_URL
  END=$(date +%s)
  echo "Done! $(( $END - $START )) seconds"
fi

if [ -f "$DUMP_NAME" ]
then

  echo "Started DB import"
  START=$(date +%s)
  zcat dump.sql.gz | $MYSQL

  END=$(date +%s)
  echo "Done! $(( $END - $START )) seconds"

else
   echo "Database dump does not exist"
fi


