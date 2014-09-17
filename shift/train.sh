#!/bin/bash
file= verbose= quiet= long=
while [ $# -gt 0 ]
do
    case $1 in
    -f) file=$2
        shift
        ;;
    -v) verbose=true
        quiet=
        ;;
    -q) quiet=true
        verbose=
        ;;
    -l) long=true
        ;;
    --) shift
        break
        ;;
    -*) echo $0: $1: unrecognize option >&2
        ;;
    *)   break
        ;;
    esac

    shift
done
echo $file, $verbose, $long, $quiet

