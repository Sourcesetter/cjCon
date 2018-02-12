#!/bin/sh

me=`basename $0`
echo $me
ls some-files/*
cat some-files/file1 | sed 's/l/L/g' > some-files/file1.1
cat some-files/file2 | sed 's/l/L/g' > some-files/file2.1
cat some-files/file3 | sed 's/l/L/g' > some-files/file3.1
cat some-files/file4 | sed 's/l/L/g' > some-files/file4.1
echo "Verzeichnisstruktur"
ls -alR /*
