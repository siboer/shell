#!/bin/bash
# cd --- private version to update PS1 when changing directories
cd ( ) {
command cd "$@"
x=$(pwd)
PS1="${x##*/}\$ "
}
