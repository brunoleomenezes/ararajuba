#!/bin/bash

# Output file name
OUTPUT_FILE="output.txt"

# Directories containing ORC files
ORC_DIRS="$(hdfs dfs -ls -R "$1" | grep "\.orc$" | awk '{print $8}' | xargs dirname | sort | uniq)"

# Loop to iterate over all ORC directories
for dir in $ORC_DIRS; do
    # Loop to iterate over all ORC files in the directory
    for file in "$dir"/*.orc; do
        # Get the file name without the full path
        filename="$(basename "$file")"

        # Add the file name to the output file
        echo "####################" >> "$OUTPUT_FILE"
        echo "# File: $filename" >> "$OUTPUT_FILE"
        echo "####################" >> "$OUTPUT_FILE"

        # Run the hive --orcfiledump command and capture the first 10 lines
        hive --orcfiledump "$file" | head -n 20 >> "$OUTPUT_FILE"
    done
done
sh 2.sh
