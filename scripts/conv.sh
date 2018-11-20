#! /bin/bash
echo "Resizing images to 320x240"
type=objects
mkdir -p "../"$type
for I in {1..885}
do
	convert "../rawImages/img"$I".png"  -resize 320x240\! "../"$type"/img"$I".png"
	convert "../"$type"/img"$I".png" -colorspace Gray -separate -average "../"$type"/img"$I".png"
done

 
