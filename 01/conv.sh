#! /bin/bash
echo "Resizing images to 40x40"
mkdir -p ../objects/01
for I in {100..199}
do
	convert "pcd0"$I"r.png"  -resize 40x40\! "../objects/01/"$I".png"
	convert  "../objects/01/"$I".png" -colorspace Gray -separate -average "../objects/"$I".png"
done
 
