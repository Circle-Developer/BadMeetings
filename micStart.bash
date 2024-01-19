#!/bin/bash

while [[ 1 ]]
do
	#min=0
	#max=0.1
	#scale=1
	#rNo=$(awk -v min="${min}" -v max="${max}" -v scale="${scale}" 'BEGIN{srand(); printf "%.*f\n", scale, min+rand()*(max-min)}')
	r1=$(( $RANDOM % 2 ))
	r2=$(( $RANDOM % 2 ))
	[ $r1 == 1 ] && [ $r2 == 1 ] && r=1 || r=0

	echo $r1
	echo $r2
	echo $r
	echo 
	echo 
	
	pactl set-source-volume alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_6__source 0.$r

	min=0
	max=1
	scale=3
	rNoNo=$(awk -v min="${min}" -v max="${max}" -v scale="${scale}" 'BEGIN{srand(); printf "%.*f\n", scale, min+rand()*(max-min)}')
	sleep $rNoNo

	#echo $rNo
	#echo $rNoNo
	#echo
	
done
