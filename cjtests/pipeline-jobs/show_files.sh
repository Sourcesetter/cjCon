#!/bin/sh
me=`basename $0`
echo $me

set -e # fail fast
set -x # print commands

git clone resource-gist some-sed-files-gist

cd some-sed-files-gist
ls *
cat *


echo "Verzeichnisstruktur nach cd .."
cd ..
ls -lR . 
