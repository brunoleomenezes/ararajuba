#!/bin/bash
database_path=$1
count_parameter=$2
hdfs dfs -ls -R $database_path | awk '{print $8}' | grep -v "^$" | while read table_path;
do
  table_name=$(basename $table_path)
  echo "Running select count($count_parameter) on table $table_name"
  result=$(hdfs dfs -cat $table_path/ | awk -F',' "END {print NR}" )
  if [ $? -ne 0 ]; then
    echo "Error running select count($count_parameter) on table $table_name" >> output_count_errors.txt
  else
    echo "Count in table $table_name is $result"
    echo "No errors found in table $table_name"
  fi
done
