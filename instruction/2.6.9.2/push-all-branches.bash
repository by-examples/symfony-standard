#!/bin/bash

# git checkout 2.7
#./push-all-branches.bash 2.6.9

git branch | grep $1 | xargs -I{} git push -u by-examples {}
