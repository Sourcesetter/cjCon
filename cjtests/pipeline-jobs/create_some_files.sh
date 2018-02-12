#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist some-files-gist
# Statt mkdir some-files

cd some-files-gist

echo "Hallo file1-CJ" > file1
echo $(date) >> file1
echo "Hallo file2-CJ" > file2
echo $(date) >> file2
echo "Hallo file3-CJ" > file3
echo $(date) >> file3
echo "Hallo file4-CJ" > file4
echo $(date) >> file4

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date and files"

cd ..
echo "cd .. mit ls -alR"
ls -alR . 
