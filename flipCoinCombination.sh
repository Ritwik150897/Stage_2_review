declare -A coin;
coin[side1]=0;
coin[side2]=0;

for ((i=0; i<=10; i++))
do
	flip=$((RANDOM%2));
	if [ $flip -eq 1 ]
	then
		echo H;
		coin["side$flip"]++;
	else
		echo T;
		coin["side$flip"]++;
	fi
done
