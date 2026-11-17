#!/bin/bash

score2grade() {	
	score=$1
	if [ "$score" -ge 90 ]; then
		grade="A"
	else
		grade="B"
	fi
	echo "$grade"
}

sum=0
cnt=0
for score in "$@"; do
	sum=$((sum + score))
	cnt=$((cnt + 1))

	grade=$(score2grade "$score")
	echo "$score: $grade"
done

avg_score=$((sum/cnt))
avg_grade=$(score2grade "$avg_score")
echo "평균 점수: $avg_score"
echo "평균 등급: $avg_grade"
