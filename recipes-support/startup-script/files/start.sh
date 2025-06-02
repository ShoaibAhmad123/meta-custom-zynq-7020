#!/bin/sh

sleep 1
ifup end0
sleep 1
ifdown end0 
ifup end0 

echo 1003 > /sys/class/gpio/export
echo 1006 > /sys/class/gpio/export 
echo 1007 > /sys/class/gpio/export 
echo 1008 > /sys/class/gpio/export 
echo 1009 > /sys/class/gpio/export 
echo 1010 > /sys/class/gpio/export 
echo 1011 > /sys/class/gpio/export 
echo 1012 > /sys/class/gpio/export 
echo 1013 > /sys/class/gpio/export 
echo 1014 > /sys/class/gpio/export 
echo 1015 > /sys/class/gpio/export 
echo 1016 > /sys/class/gpio/export 
echo 1017 > /sys/class/gpio/export 
echo 1018 > /sys/class/gpio/export 
echo 1019 > /sys/class/gpio/export 
echo 1020 > /sys/class/gpio/export 
echo 1021 > /sys/class/gpio/export 
echo 1022 > /sys/class/gpio/export 
echo 1023 > /sys/class/gpio/export 
 
cd /home/analog
/opt/jdk11.0.11/bin/java -jar application.jar
