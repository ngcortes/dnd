#!/bin/sh

set -e

linecount=$(expr `wc -l $1 | cut -f1 -d ' '` - 1)

if [ $linecount -eq 0 ]; then
    cat $1
    return
fi

line=$(expr `rand -M $linecount` + 1)
sed -n $line'p' $1
