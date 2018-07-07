#! /bin/bash
mkdir -p ../seqImages
A=1
for file in ../rawImages/*; do
    cp "../rawImages/$(basename "$file")" "../seqImages/img"$A".png"
    A=$((A+1)) 
done
