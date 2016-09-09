#!/bin/bash
for branch in `git branch -r | grep -v HEAD | grep -v master`; do
  echo ${branch##*/} $branch
done
echo "Fetching..."
git fetch --all
echo "Pulling..."
git pull -v
echo "Results: Branches"
git branch -a
echo "Results: Tags"
git tag
