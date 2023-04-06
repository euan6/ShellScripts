#!/bin/bash
for i in {1..10}; do #Iterates through nums 1-10
  filename="file${i}.txt" #For each num the script constructs a file name in format fileN.txt
  if [ -f "$filename" ]; then #Checks if filename exists
    echo "$filename exists" #Output if it exists
  else
    echo "$filename does not exist" #Output if does not exist
  fi
done
#Save to file q3.sh and use command
#chmod +x q3.sh
#Then can run it to check current directory
#./q3.sh