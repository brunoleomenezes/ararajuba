#!/bin/bash

# Extract only what comes after "Type: " in the output.txt file and save it to a temporary file
sed -n 's/^Type: \(.*\)/\1/p' output.txt > /tmp/patterns.txt

# Save the first line found as a reference
reference=$(head -n 1 /tmp/patterns.txt)

# Compare the reference with the other lines
while read line; do
  if [ "$line" != "$reference" ]; then
    echo $line >> output_errors.txt
  fi
done < /tmp/patterns.txt

# If the output_errors.txt file is not empty, it means there are differences between the lines
if [ -s output_errors.txt ]; then
  echo "Different patterns found, see the output_errors.txt file for more details"
  sh 3.sh # Run file 3.sh with bin/bash
else
  echo "All patterns are the same"
  sh 4.sh
fi

# Remove the temporary file
rm /tmp/patterns.txt

