#!/bin/bash


if [ $# != 1 ]; then
    echo "usage myawesomescript.sh <link>"
else
    for arg in "$@"; do
        raw=$(curl -s "$arg")
        raw=$(echo $raw | grep -o '<a href="[^"]*' | cut -d '"' -f2)
        echo "the link is <" $raw ">"
    done
fi