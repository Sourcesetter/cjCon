#!/bin/sh
me=`basename $0`
echo $me

set -e # fail fast
set -x # print commands

# git clone some-files-gist some-sed-files-gist
# Statt mkdir some-files

cd some-sed-files-gist
ls *
cat *

cd ..

echo "Verzeichnisstruktur"
ls -alR . 
