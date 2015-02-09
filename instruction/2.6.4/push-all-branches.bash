#!/bin/bash

# git checkout 2.7
#./push-all-branches.bash 2.6.4

git branch | grep $1 | xargs -I{} git push by-examples {}
