#!/bin/bash

ip1=$1

ip2=$2

function is_alive_ping() {
	ping -c 1 $j > /dev/null 2>&1
	if [ $? -eq 0 ]
	then
		echo "La IP: $j está activa"
	fi
}
#Aquí no sabía qué poner con pipe profe jaja puse esto
echo "Como dato adicioanl, aquí se muestra tu ip"
ifconfig | grep 192.168
for i in `seq $ip1 $ip2`
do
	for j in 192.168.0.$i
	do
		is_alive_ping $j & disown
	done
done
