#! /bin/bash
head_count=0;
tail_count=0;
flipcoin()
{
#num=$(( RANDOM%3 ))

for (( i=0; i<$x; i++ ))
do
  num=$(( RANDOM%2 ))

 if [[ $num -eq 0 ]]
 then
     tail_count=`expr $tail_count + 1`
     echo  $tail_count" Tails"
 fi
 if [[ $num -eq 1 ]]
 then

     head_count=`expr $head_count + 1`
     echo $head_count" Heads"
 fi
done
echo "Tails $tail_count"
echo "head $head_count"
 if [[ $tail_count -gt $head_count ]]
 then
     n=`expr $tail_count  \* 100 / $x`
     echo  $tail_count "times Tail occured and win by $n %"
 fi
if [[ $tail_count -lt $head_count ]]
 then
      n=`expr $head_count  \* 100 / $x`
     echo  $head_count "times Head occured and win by $n %"
 fi


}
echo "Enter the Number of iterations you wanna perform :"
read x
flipcoin $x
