#!/bin/bash

#  Usage:
#  ./replace_line <line number> <text to put> <extension (without dot)>


line=$1         # Line number
replacement=$2  # New content
extension=$3    # extension of affected files

for file in `eval echo *.$extension`; do
    sed -i "$line""s/.*/$replacement/" $file
done
