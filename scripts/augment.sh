#! /bin/bash
echo "Augmenting dataset"
for I in {1..885}
do
	convert -rotate "90" "../objects/img"$I".png" "../objects/img"$((I+885))".png"
	convert -rotate "180" "../objects/img"$I".png" "../objects/img"$((I+2*885))".png"
	convert -rotate "270" "../objects/img"$I".png" "../objects/img"$((I+3*885))".png"
done

 
