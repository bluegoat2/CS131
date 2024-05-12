#!/bin/bash
mkdir -p "Worksheet 5/United States" 

for category in Music Entertainment Gaming Comedy; do
    awk -F',' '$8 == "United States" && $5 == "'"$category"'" { print $0 }' "Global YouTube Statistics.csv" > "Worksheet 5/United States/$category.txt"
done
 
wc -l "Worksheet 5/United States/Music.txt" "Worksheet 5/United States/Entertainment.txt" "Worksheet 5/United States/Gaming.txt" "Worksheet 5/United States/Comedy.txt" > ws5.txt
