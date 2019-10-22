#!/bin/bash

#  usage: ./rename <extension1> <extension2>


#  This is simple script for renaming extensions 
#  of all files in current working directory 

echo -e "\nRenaming files:\n---------------"
for i in *; do
    if [[ "$i" == *$1  ]]
    then
        echo "$i -> ${i%$1}$2" 
        mv $i ${i%$1}$2 
    fi
done
