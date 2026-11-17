#!/bin/bash

while true; do
    echo "==================="
    echo "1) 사용자 정보"
    echo "2) GPU 사용률 확인"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "==================="

    read -p "메뉴 입력: " num

    case "$num" in
        1)
            echo "사용자명: $(whoami)"
        ;;
        2)
            nvidia-smi
        ;;
        3)
            free -h
        ;;
        4)
            df -h
        ;;
        5)
            echo "프로그램 종료"
            break
        ;;
        *)
            echo "잘못된 입력입니다."
        ;;
    esac
done
