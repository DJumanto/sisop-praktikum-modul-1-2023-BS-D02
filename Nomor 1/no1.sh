#!/bin/bash

#A Tampilkan 5 univ terbaik

file="2023\ QS\ World\ University\ Rankings.csv"
echo "Menampilkan 5 universias tertinggi di jepang"
awk '/Japan/ {print}' 2023\ QS\ World\ University\ Rankings.csv | head -n 5 | cut --delimiter=',' -f2
echo ""
echo "Menampilkan urutan unversitas dengan urutan fsr terendah dari filter sebelumnya"
awk '/Japan/ {print}' 2023\ QS\ World\ University\ Rankings.csv | head -n 5 | sort -t ',' -k 10nr | cut --delimiter=',' -f2
echo ""
echo "Menampilkan universitas dengan ger rank tertinggi"
awk '/Japan/ {print}' 2023\ QS\ World\ University\ Rankings.csv | sort -t ',' -k 20g | cut --delimiter=',' -f2 | head -n 10
echo""
echo "Menampilkan universitas paling keren"
awk '/Keren/ {print}' 2023\ QS\ World\ University\ Rankings.csv | cut --delimiter=',' -f2
