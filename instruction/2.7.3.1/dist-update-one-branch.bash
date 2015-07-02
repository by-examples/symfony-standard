#!/bin/bash

# ./dist-update-one-branch.bash 2.6.1 2.6.3 Behat

old_version=$1
new_version=$2
branch_name=$3

git checkout -b "${new_version}/${branch_name}" "v$new_version" && \
git cherry-pick "${old_version}/${branch_name}"

exit 0