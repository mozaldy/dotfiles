#!/bin/sh
# file: checkdir.sh
# Usage: checkdir.sh DirectoryName

if [ $# -ne 1 ]
then
    echo "Error, usage: checkdir.sh DirectoryName"
    exit 1
fi

directory=$1

[ -d "$directory" ] && ls -ld "$directory" || echo "Not a directory."
