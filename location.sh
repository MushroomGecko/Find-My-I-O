#!/bin/bash

file_type="type"

device_types=($(ls /sys))
device_types+=("all")
echo "${#device_types[@]}"

for ((i=0; i < ${#device_types[@]}; i++));
do
	echo -e  $i : '\t' ${device_types[i]}
done

echo "Select device you wish to see"
read user_input
echo ""

if ((user_input==(${#device_types[@]}-1)))
then
        for i in $(find /sys -name $file_type);
	do
		echo $i :  $(cat $i)
	done
else
	sub_device_types=($(ls /sys/${device_types[user_input]}))
	sub_device_types+=("all")
	echo "${#sub_device_types[@]}"

	for ((i=0; i < ${#sub_device_types[@]}; i++));
	do
        	echo -e  $i : '\t' ${sub_device_types[i]}
	done


	echo "Select sub-device you wish to see"
	read sub_user_input
	echo ""

	if ((sub_user_input==(${#sub_device_types[@]}-1)))
	then
        	for j in $(find /sys/${device_types[user_input]} -name $file_type);
        	do
                	echo $j :  $(cat $j)
        	done
	else
        	for j in $(find /sys/${device_types[user_input]}/${sub_device_types[sub_user_input]} -name $file_type);
        	do
                	echo $j :  $(cat $j)
        	done
	fi
fi
