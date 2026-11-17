#!/bin/bash

internal_function() {
    echo "함수 안으로 들어 왔음"
    command='ls "$@"'
    eval "$command"
}

echo "프로그램을 시작합니다."
internal_function "$@"
echo "프로그램을 종료합니다."