#!/bin/sh
me=`basename $0`
echo $me

set -e # fail fast
set -x # print commands

git clone resource-gist some-sed-files-gist

cd some-sed-files-gist

cat file1 | sed 's/l/L/g' > file1.1
cat file2 | sed 's/l/L/g' > file2.1
cat file3 | sed 's/l/L/g' > file3.1
cat file4 | sed 's/l/L/g' > file4.1

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "stream edited files"

echo "Verzeichnisstruktur"
cd ..
ls -lR . 
