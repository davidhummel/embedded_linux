#!/bin/bash

# Tell the system we'll be using the GPIO 
if [ ! -d /sys/class/gpio/gpio$1 ]; then
        echo $1 > /sys/class/gpio/export
fi

if [ "$2" == "2" ]; then 
	echo in > /sys/class/gpio/gpio$1/direction
else
	echo out > /sys/class/gpio/gpio$1/direction
	echo $2 > /sys/class/gpio/gpio$1/value
fi

