#!/usr/bin/bash
ml icc

cd ~/lab3/task4/

icc -std=c++17 -O1 stackoverflow.cpp -o stackoverflow
time for i in {1..100}
do
  ./stackoverflow
done

icc -std=c++17 -O2 stackoverflow.cpp -o stackoverflow
time for i in {1..100}
do
  ./stackoverflow
done

icc -std=c++17 -O3 stackoverflow.cpp -o stackoverflow
time for i in {1..100}
do
  ./stackoverflow
done

for arch in sse2 sse3 sse4.1 sse4.2 avx ATOM_SSE4.2 ATOM_SSSE3 SANDYBRIDGE SILVERMONT 
do 
icc -x$arch -std=c++17 stackoverflow.cpp -o stackoverflow_$arch    
time for i in {1..100}
do 
./stackoverflow_$arch 
done 
done

