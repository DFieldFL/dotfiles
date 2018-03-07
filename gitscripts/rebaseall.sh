#!/bin/bash

for d in */ ; do
  cd $d
  if [ -d .git ]; then
    git fetch upstream --prune
    # Don't rebase if no upstream exists
    if [ $? -eq 0 ]; then
      echo "\nrebase upstream/master for $d"
      git checkout master
      git rebase upstream/master
    else
      echo "\nno upstream for $d"
    fi;
  else
    echo "\n$d is not a git repo"
  fi;
  cd ..
done
