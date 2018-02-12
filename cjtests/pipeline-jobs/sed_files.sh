#!/bin/sh


mkdir some-sed-files
cat some-files/file1 | sed 's/l/L/g' > some-sed-files/file1.1
cat some-files/file2 | sed 's/l/L/g' > some-sed-files/file2.1
cat some-files/file3 | sed 's/l/L/g' > some-sed-files/file3.1
cat some-files/file4 | sed 's/l/L/g' > some-sed-files/file4.1
echo "Verzeichnisstruktur"

#!/bin/sh
me=`basename $0`
echo $me

set -e # fail fast
set -x # print commands

git clone some-files-gist some-sed-files-gist
# Statt mkdir some-files

cat some-files-gist/file1 | sed 's/l/L/g' > some-sed-files-gist/file1.1
cat some-files-gist/file2 | sed 's/l/L/g' > some-sed-files-gist/file2.1
cat some-files-gist/file3 | sed 's/l/L/g' > some-sed-files-gist/file3.1
cat some-files-gist/file4 | sed 's/l/L/g' > some-sed-files-gist/file4.1

cd some-sed-files-gist

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date and files"

cd ..

ls -alR . 
