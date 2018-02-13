#!/bin/sh
me=`basename $0`
echo Output form: $me

set -e # fail fast
set -x # print commands

# Git-resource ist als Input für den Run-Lauf definiert
# Damit mountet man das Git in den Container


echo "Verzeichnisstruktur in git-resource"
cd git-resource
ls *

echo "Verzeichnisstruktur nach cd .."
cd ..
ls -lR . 
