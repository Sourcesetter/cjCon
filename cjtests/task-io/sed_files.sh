#!/bin/sh

me=`basename $0`
echo $me

mkdir some-sed-files
cat some-files/file1 | sed 's/l/L/g' > some-sed-files/file1.1
cat some-files/file2 | sed 's/l/L/g' > some-sed-files/file2.1
cat some-files/file3 | sed 's/l/L/g' > some-sed-files/file3.1
cat some-files/file4 | sed 's/l/L/g' > some-sed-files/file4.1
echo "Verzeichnisstruktur"
ls -alR . 
