#!/bin/bash
git branch | sed "s/^ *//" | grep -v master | xargs git branch -D

function gb_cleanup(){
git checkout master        #in case you forgot to switch to master
git branch |               #get all branches
 sed "s/^ *//" |           #remove leading spaces
   grep -v master |        #master should not be deleted!
    xargs git branch -D    #delete branches
printf "git branch\n%s\n" "$(git branch)"
}

