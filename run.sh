#!/bin/bash


echo "Check Size cache apt:"
du -sh /var/cache/apt/archives

echo "Check Memory:"
free -h

echo "Cleaning apt cache..."
apt clean

echo "Cleaning pagecache, memory ram ..."
sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"

echo "===================================================================================="

echo "Result Check Size cache apt:"
du -sh /var/cache/apt/archives

echo "Result Check Memory:"
free -h
