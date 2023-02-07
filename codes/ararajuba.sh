#!/bin/bash

# User-provided option
OPTION="$1"

# Directory containing ORC files
ORC_DIR="$2"

# Number provided by the user
NUMBER="$3"

# Output file name
OUTPUT_FILE="output.txt"

# Check the option provided by the user
case "$OPTION" in
  "-schema")
    # Run ararajuba.sh file
    sh 1.sh "$ORC_DIR"
    ;;
  "-count")
    # Run 5.sh file
    sh 5.sh "$ORC_DIR" "$NUMBER"
    ;;
  *)
    echo "Invalid option provided"
    exit 1
    ;;
esac
