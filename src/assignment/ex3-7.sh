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
    file_name="file${i}"
    touch "${file_name}.txt"

    mkdir $file_name
    ln -s "../${file_name}.txt" "$file_name/$file_name.txt"
done
