#!/bin/bash
path='/home/tolstoy/mem/long.file.name'
echo ${path#/*/}     # tolstoy/mem/long.file.name
echo ${path##/*/}    # long.file.name
echo ${path%.*}      # /home/tolstoy/mem/long.file
echo ${path%%.*}     # /home/tolstoy/mem/long
echo ${#path}        # 32

