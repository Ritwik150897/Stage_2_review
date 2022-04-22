heads=0;
tails=0;

for((i=1; i<=10; i++))
do
   flip=$((RANDOM%2));
   if [ $flip -eq 1 ]
   then
      echo H;
      $((heads++));
   else
      echo T;
      $((tails++));
   fi
done
echo $heads
echo $tails

a=`echo $heads 10 | awk '{print $1/$2}'`;
b=`echo $tails 10 | awk '{print $1/$2}'`;

x=`echo $a 100 | awk '{print $1*$2}'`;
echo "Heads: "$x "%"
y=`echo $b 100 | awk '{print $1*$2}'`;
echo "Tails: "$y "%"
