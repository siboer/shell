#!/bin/bash
rm -f *.mailing-list

while IFS=: read user passwd uid gid name home shell
do
    shell=${shell:-/bin/sh}
    file="$(echo $shell | sed -e 's;^/;;' -e 's;/;-;g').mailing-list"
    echo $user, >> $file
done