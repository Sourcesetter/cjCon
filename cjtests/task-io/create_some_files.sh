#!/bin/sh

# Verzeichnis muss so heissen wie die Outputs im yml.
mkdir some-files
echo "Hallo file1-CJ" > some-files/file1
echo "Hallo file2-CJ" > some-files/file2
echo "Hallo file3-CJ" > some-files/file3
echo "Hallo file4-CJ" > some-files/file4

ls -als some-files/*
