#!/bin/sh

. confirm.sh

confirm
result=$?

if [ $result -eq 0 ]; then
    echo "Jawaban YES OK"
elif [ $result -eq 1 ]; then
    echo "Jawaban NO"
else
    echo "Jawaban CONTINUE"
fi
