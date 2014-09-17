#!/bin/bash
#equal - compare two strings
equal(){
    case "$1" in
        "$2") echo equal!
              return 0;;
    esac
    echo not equal!
}

equal igor igor
equal igor vasil
equal igor Igor
