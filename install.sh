#!/bin/bash
input="/home/requerements.txt"
while IFS= read -r line
do
    pip install $line
done < "$input"