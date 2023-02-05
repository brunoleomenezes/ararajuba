#!/bin/bash

# Store the pattern to be searched
pattern=$(cat output_erros.txt)

# Search the pattern in "output.txt"
grep -n "$pattern" output.txt | while read line; do
  # Store the line number
  line_number=$(echo "$line" | awk -F: '{print $1}')

  # Display the found line
  echo "$line"

  # Display the 12 lines above the found line
  head -n "$line_number" output.txt | tail -n 12
done

# If grep didn't return anything, the pattern was not found
if [ $? -ne 0 ]; then
  echo "The pattern was not found in output.txt"
fi
sh 4.sh # Execute file 3.sh with bin/bash

