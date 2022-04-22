declare -A dice;

dice[side1]=0;
dice[side2]=0;
dice[side3]=0;
dice[side4]=0;
dice[side5]=0;
dice[side6]=0;

while [[ dice[side1] -eq 10 || dice[side2] -eq 10 || dice[side3] -eq 10 || dice[side4] -eq 10 || dice[side5] || dice[side6] -eq 10 ]]
do
	diceValue=$((RANDOM%6 + 1));
	dice["side$diceValue"]++;
done
echo ${dice[@]}

