#!/bin/bash

calc() {
	local x=$1
	echo "scale=4; ($x^2)/2" | bc
}

for num in "$@"; do
	result=$(calc "$num")
	echo "$num: $result"
done
