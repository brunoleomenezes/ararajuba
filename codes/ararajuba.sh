#!/bin/bash

# User-provided option
OPTION="$1"

# Directory containing ORC files
ORC_DIR="$2"

# Output file name
OUTPUT_FILE="output.txt"

# Check the option provided by the user
case "$OPTION" in
  "-schema")
    # Run ararajuba.sh file
    ./1.sh "$ORC_DIR"
    ;;
  "-count")
    # Run 5.sh file
    ./5.sh "$ORC_DIR"
    ;;
  *)
    echo "Invalid option provided"
    exit 1
    ;;
esac

