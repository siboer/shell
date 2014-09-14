#!/bin/bash
cat << EOFILE
<html>
<body>
<table>
EOFILE

sed -e 's=\t=</td><td>=g' -e 's=^.*$=<tr><td>&</td></tr>='

cat << EOFILE
</table>
</body>
</html>
EOFILE