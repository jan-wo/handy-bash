#!/bin/bash


var=$1 # New content

for file in *.xyz; do
    sed -i "2s/.*/$var/" $file
done
