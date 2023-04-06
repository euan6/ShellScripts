#!/bin/bash
if [ $# -ne 1 ]; then 
  echo "Usage: $0 <filename>" #Checks if script is called with an argument
  exit 1 #If not display usage message and exit
fi

if [ ! -f "$1" ]; then
  echo "$1 does not exist" #Checks if the file exists
  exit 1 #If not display error message and exit
fi

sort -r "$1" > fileSort.txt #Sorts contents in reverse alphabetical order to fileSort.txt
cat fileSort.txt #Displays the contents of fileSort.txt
#Save to file q1.sh and use command
#chmod +x q1.sh
#Then can run it with filename argument
#./q1.sh myFile.txt