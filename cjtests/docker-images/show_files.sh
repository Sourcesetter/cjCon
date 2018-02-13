#!/bin/sh
me=`basename $0`
echo $me

set -e # fail fast
set -x # print commands

# Hier wird kein Docker-Image mit einem Git benötigt
# Einfaches Download das gist-Verzeichnisses in den Docker-Container
# git clone resource-gist some-sed-files-gist

cd git-resource
ls *
cat *

echo "Verzeichnisstruktur nach cd .."
cd ..
ls -lR . 
