#!/bin/bash

#A Tampilkan 5 univ terbaik

file="2023\ QS\ World\ University\ Rankings.csv"
echo "Menampilkan 5 universias tertinggi di jepang"
awk '/Japan/ {print}' 2023\ QS\ World\ University\ Rankings.csv | head -n 5 | cut --delimiter=',' -f2
