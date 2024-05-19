#!/bin/bash

echo -n "Berikan gaji dalam ribuan rupiah: "
read gaji

pkp=10000 # 10 juta pertama
pph=0

if [ $gaji -le $pkp ]; then
    pph=$((15 * $gaji / 100))
elif [ $gaji -gt $pkp ]; then
    pph=$((15 * $pkp / 100))
    pkp=25000 # 25 juta berikutnya
    sisa=$((gaji - pkp))
    pph=$((pph + (25 * $sisa / 100)))
    if [ $sisa -gt 0 ]; then
        pph=$((pph + (35 * $sisa / 100)))
    fi
fi

echo "Pajak Penghasilan = $pph"
