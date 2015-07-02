#!/bin/bash

# git checkout 2.7
#./push-all-branches.bash 2.7.3

git branch | grep $1 | xargs -I{} git push -uf by-examples {}
