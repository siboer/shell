#!/bin/bash
#print first n lines
#usage: head -N file+
count=$(echo $1 | sed 's/^-//') #strip leading -
shift                           #move $1 out of the way
sed ${count}q "$@"