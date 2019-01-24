#!/bin/bash
FILE="/root/input/hello.json"
if [ -f $FILE ]
then
    names=$(cat "$FILE" | jq '.name' | jq '.[]')
    echo "$names"
    for NAME in $names
    do
        echo Hi $NAME
    done
fi
