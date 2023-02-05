#!/bin/bash

# Output file name
OUTPUT_FILE="output.txt"

# Directory containing ORC files
ORC_DIR="$1"

# Output file name
OUTPUT_FILE="output.txt"

# Loop to iterate over all ORC files in the directory
for file in "$ORC_DIR"/; do
    # Get the file name without the full path
    filename="$(basename "$file")"

    # Add the file name to the output file
    echo "####################" >> "$OUTPUT_FILE"
    echo "# File: $filename" >> "$OUTPUT_FILE"
    echo "####################" >> "$OUTPUT_FILE"

    # Run the command hive --orcfiledump and capture the first 10 lines
    hive --orcfiledump "$file" | head -n 20 >> "$OUTPUT_FILE"
done
sh 2.sh
