#!/bin/bash

dir=$1

if [ -d "$dir" ]; then
    echo "폴더가 이미 존재합니다."
else 
    echo "폴더가 없습니다. 생성합니다." 
    mkdir "$dir"
fi

cd $dir
for i in {0..4}; do
    touch "file${i}.txt"
done

tar -cf "$dir.tar" file*.txt  

mkdir -p "$dir"
mv "$dir.tar" "$dir/"
tar -xvf "$dir/$dir.tar" -C "$dir"