#! /bin/bash
echo "Resizing images to 40x40"
type=test
mkdir -p "../"$type
for I in {1..885}
do
	convert "../rawImages/img"$I".png"  -resize 40x40\! "../"$type"/img"$I".png"
	convert "../"$type"/img"$I".png" -colorspace Gray -separate -average "../"$type"/img"$I".png"
done

 
