#!/bin/bash

score2grade() {	
	score=$1
	if [ "$score" -ge 90 ]; then
		grade="A"
	elif [ "$score" -ge 80 ]; then
		grade="B"
	elif [ "$score" -ge 70 ]; then
		grade="C"
	elif [ "$score" -ge 60 ]; then
		grade="D"
    else
        grade="F"
	fi
	echo "$grade"
}

scores=()
while true; do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="

    read -p "메뉴 입력: " num

    case "$num" in
        1)
            read -p "성적 입력: " score
            scores+=("$score")
        ;;
        2)
            if [ "${#scores[@]}" -eq 0 ]; then
                echo "입력된 성적이 없습니다."
                continue
            fi
            
            for score in "${scores[@]}"; do
                echo "$score"
            done
        ;;
        3)
            if [ "${#scores[@]}" -eq 0 ]; then
                echo "입력된 성적이 없습니다."
                continue
            fi

            cnt=0
            sum=0
            for score in "${scores[@]}"; do
                sum=$((sum+score))
                cnt=$((cnt+1))
            done
            avg_score=$(echo "scale=2; $sum/$cnt" | bc)
            echo "평균 점수: $avg_score"
        ;;
        4)
            if [ "${#scores[@]}" -eq 0 ]; then
                echo "입력된 성적이 없습니다."
                continue
            fi

            cnt=0
            sum=0
            for score in "${scores[@]}"; do
                sum=$((sum+score))
                cnt=$((cnt+1))
            done
            avg_score=$((sum/cnt))
            avg_grade=$(score2grade "$avg_score")
            echo "평균 등급: $avg_grade"
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
