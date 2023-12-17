#!/bin/bash

file1="$1"
file2="$2"

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 $file1 $file2"
    exit 1
fi

if [ ! -f "$file1" ]; then
    echo "Error: The File '$file1' does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: The File '$file2' does not exist."
    exit 1
fi

diff "$file1" "$file2"
