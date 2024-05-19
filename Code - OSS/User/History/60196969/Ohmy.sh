#!/bin/sh

# Confirm whether we really want to run this service
confirm() {
    local YES="Y"
    local NO="N"
    local CONT="C"
    local answer

    while :
    do
        echo -n "(Y)es/(N)o/(C)ontinue? [Y] "
        read answer
        answer=$(echo "$answer" | tr '[:lower:]' '[:upper:]')

        if [ "$answer" = "" ] || [ "$answer" = "$YES" ]; then
            return 0
        elif [ "$answer" = "$CONT" ]; then
            return 2
        elif [ "$answer" = "$NO" ]; then
            return 1
        else
            echo "Invalid input. Please enter Y, N, or C."
        fi
    done
}
