#! /bin/bash
echo "Resizing images to 40x40"
for I in {100..199}
do
	convert "pcd0"$I"r.png"  -resize 40x40\! "../objects/"$I".png"
	convert  "../objects/"$I".png" -colorspace Gray -separate -average "../objects/"$I".png"
done
 
