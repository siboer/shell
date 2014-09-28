#!/bin/bash
dir=/usr/bin
pattern=$1
for file in $dir/$pattern
do
    echo $file
done
