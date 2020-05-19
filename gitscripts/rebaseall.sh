#!/bin/bash

if [ $1 -eq 0 ]; then
  echo "Please provide an argument to be used for the branch to rebase."
fi;

branchName=$1

for d in */ ; do
  cd $d
  if [ -d .git ]; then
    git fetch upstream --prune
    # Don't rebase if no upstream exists
    if [ $? -eq 0 ]; then
      echo -e "\nrebase upstream/$branchName for $d"
      git checkout $branchName
      git rebase upstream/$branchName
    else
      echo -e "\nno upstream for $d"
    fi;
  else
    echo -e "\n$d is not a git repo"
  fi;
  cd ..
done