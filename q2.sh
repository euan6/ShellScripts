#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Usage: $0 <filename> <grep pattern>" #Checks if script was called with exactly 2 arguments
  exit 1 #If not display usage message and exit
fi

if [ ! -f "$1" ]; then
  echo "$1 does not exist" #Checks if the first argument is a file that exists
  exit 1 #If not displays error message and exit
fi

total_lines=$(wc -l < "$1") #Set to the number of lines in the file
grep_lines=$(grep -c "$2" "$1") #Set to the number of lines in the file that contain the grep pattern

if [ $total_lines -eq 0 ]; then
  echo "Error: $1 is an empty file" #Checks if the file is empty
  exit 1 #If it is empty then displays an error message and exit
fi

percent=$(( 100 * grep_lines / total_lines )) #Set to the percentage of lines in the file that contain the grep pattern
echo "$percent" #Prints the percentage
#Save to file q2.sh and use command
#chmod +x q2.sh
#Then can run it with filename and grep pattern arguments
#./q2.sh myFile2.txt hello