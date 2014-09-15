#!/bin/bash
FILES="
/usr/share/dict/american-english
/usr/share/dict/british-english
"
pattern="$1"

egrep -h -i "$pattern" $FILES 2> /dev/null | sort -u -f
