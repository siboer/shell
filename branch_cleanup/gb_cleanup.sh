#!/bin/bash
git branch | sed "s/^ *//" | grep -v master | xargs git branch -D
