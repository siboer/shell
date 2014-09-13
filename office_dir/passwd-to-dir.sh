#!/bin/sh
#Filter an input stream formatted like /etc/passwd, and output an office directory derived from that data.
umask 077

TMP=/tmp
PERSON=$TMP/pd.key.person.$$
OFFICE=$TMP/pd.key.office.$$
TELEPHONE=$TMP/pd.key.telephone.$$
USER=$TMP/pd.key.user.$$

trap "exit 1" HUP INT PIPE QUIT TERM
trap "rm -f $PERSON $OFFICE $TELEPHONE $USER" EXIT

awk -F: '{print $1 ":" $5}' > $USER

sed -e 's,/.*,,' -e 's=^\(.*\):\(.*\) \(.*\)=\1:\3, \2=' < $USER | sort >$PERSON
sed -e 's=^\(.*\):\(.*\)/\(.*\)/\(.*\)=\1:\3=' < $USER | sort >$OFFICE
sed -e 's=^\(.*\):\(.*\)/\(.*\)/\(.*\)=\1:\4=' < $USER | sort >$TELEPHONE

join -t: $PERSON $OFFICE |
    join -t: - $TELEPHONE |
        cut -d: -f 2- |
           sort -t : -k1,1 -k2,2 -k3,3 |
              awk -F: '{printf("%-39s\t%s\t%s\n"), $1, $2, $3}'






