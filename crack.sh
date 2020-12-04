#!/bin/bash

passwd="\$6\$fsfOJy/N\$NeaIKnMtXzJpQnWGXsBDlPJTgVs5iMrNEXTaHIjv3Oq5E9cQFOiCn7EJbbmxHGsdDCN86AReZh2d43WboHlOg1"
dict="darkweb2017-top1000.txt" #Dictionaire

while IFS= read -r line
do
	hashed=`mkpasswd -m SHA-512 -S fsfOJy/N $line` #-m algorithm -S salt
	if [ "$hashed" = "$passwd" ]; then
		echo $line
	fi
done < "$dict"
