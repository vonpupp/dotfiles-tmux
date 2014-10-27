#!/bin/bash

case "$OSTYPE" in
    linux-gnu)
            if which sensors > /dev/null; then
                sensors | grep temp1 | grep thermistor | awk '{print $2;}' | grep -oEi '[0-9]+.[0-9]+' | awk '{total+=$1; count+=1} END {print total/count,"C"}'
            else
                ""
            fi
        ;;
esac
