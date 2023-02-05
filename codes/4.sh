#!/bin/bash

# Ask user twice if they want to delete the files output.txt and output_erros.txt
read -p "Do you want to delete the files output.txt and output_erros.txt? (y/n): " answer1
if [ "$answer1" == "y" ]; then
  read -p "Are you sure? (y/n): " answer2
  if [ "$answer2" == "y" ]; then
    # Make a copy of the two files in "output_backup.txt"
    cat output.txt output_erros.txt > output_backup.txt

    # Delete the files "output.txt" and "output_erros.txt"
    rm output.txt output_erros.txt

    echo "Files deleted successfully. A copy of the files has been saved in output_backup.txt"
  else
    echo "Files not deleted"
  fi
else
  echo "Files not deleted"
fi
