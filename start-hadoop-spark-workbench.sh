#!/bin/bash

docker-compose up -d

my_ip=`ip route get 255.255.255.255 | grep -Po '(?<=src )(\d{1,3}.){4}'`
echo "Namenode: http://${my_ip}:50070"
echo "Datanode: http://${my_ip}:50075"
echo "Spark-master: http://${my_ip}:8080"
echo "Spark-notebook: http://${my_ip}:9001"
echo "Spark-Jupyter: http://${my_ip}:8888"
echo "Hue (HDFS Filebrowser): http://${my_ip}:8088/home"

