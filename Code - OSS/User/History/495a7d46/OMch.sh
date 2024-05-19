#!/bin/sh
# file: salin.sh
# Usage: salin.sh fasal ftujuan

if [ $# -ne 2 ]
then
    echo "Error, usage: salin.sh file-asal file-tujuan"
    exit -1
fi

fasal=$1
ftujuan=$2

if [ ! -e "$fasal" ]
then
    echo "File asal tidak ada, salin gagal."
    exit 1
fi

if [ -d "$ftujuan" ]
then
    echo "File tidak bisa disalin ke direktori."
    exit 1
fi

if [ -e "$ftujuan" ]
then
    echo "File tujuan sudah ada."
    echo -n "Apakah Anda ingin menghapus file tersebut (Y/N)?: "
    read jawaban
    if [ "$jawaban" = "Y" ]
    then
        rm "$ftujuan"
        cp "$fasal" "$ftujuan"
        echo "File berhasil disalin."
    else
        echo "Penyalinan dibatalkan."
        exit 1
    fi
else
    cp "$fasal" "$ftujuan"
    echo "File berhasil disalin."
fi
