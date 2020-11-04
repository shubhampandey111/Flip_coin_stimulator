#! /bin/bash
head_count=0;
tail_count=0;
head_head_count=0;
head_tail_count=0;
tail_tail_count=0;
tail_head_count=0;
flipcoin()
{
#num=$(( RANDOM%3 ))

for (( i=0; i<$x; i++ ))
do
  num=$(( RANDOM%2 ))
  num1==$(( RANDOM%2 ))

 if [ $num -eq 0 ]
 then
     tail_count=`expr $tail_count + 1`
     echo  $tail_count" Tails"
 fi
 if [ $num -eq 0 && $num1 -eq 0 ]
 then
     tail_tail_count=`expr $tail_tail_count + 1`
     echo  $tail_tail_count" TT"
 fi
 if [ $num -eq 0 && $num1 -eq 1 ]
 then
     tail_head_count=`expr $tail_head_count + 1`
     echo  $tail_head_count" TH"
 fi
 if [ $num -eq 1 && $num1 -eq 0 ]
 then
     head_tail_count=`expr $head_tail_count + 1`
     echo  $head_tail_count" HT"
 fi
 if [ $num -eq 1 && $num1 -eq 1 ]
 then
     head_head_count=`expr $head_head_count + 1`
     echo  $head_head_count" HH"
 fi
 if [ $num -eq 1 ]
 then

     head_count=`expr $head_count + 1`
     echo $head_count" Heads"
 fi
done
echo "Tails $tail_count"
echo "head $head_count"
echo "HH $head_head_count"
echo "HT $head_tail_count"
echo "TH $tail_head_count"
echo "TT $tail_tail_count"





if [ $tail_count -gt $head_count ] && [ $tail_count -gt $tail_tail_count ] && [ $tail_count -gt $tail_head_count ] && [ $tail_count -gt $head_tail_count ] && [ $tail_count -gt $head_head_count ]
then
     n=`expr $tail_count  \* 100 / $x`
     echo  $tail_count "times Tail occured and win by $n %"
fi
if [ $head_count -gt $tail_count ] && [ $head_count -gt $tail_tail_count ] && [ $head_count -gt $tail_head_count ] && [ $head_count -gt $head_tail_count ] && [ $head_count -gt $head_head_count ]
 then
      n=`expr $head_count  \* 100 / $x`
     echo  $head_count "times Head occured and win by $n %"
 fi

if [ $head_head_count -gt $tail_count ] && [ $head_head_count -gt $tail_tail_count ] && [ $head_head_count -gt $tail_head_count ] && [ $head_head_count -gt $head_tail_count ] && [ $head_head_count -gt $head_count ]
 then
      n=`awk "BEGIN {print $(( $head_head_count  \* 100 / $x ))}"`
     echo  $head_head_count "times HH occured and win by $n %"
 fi

if [ $head_tail_count -gt $tail_count ] && [ $head_tail_count -gt $tail_tail_count ] && [ $head_tail_count -gt $tail_head_count ] && [ $head_tail_count -gt $head_count ] && [ $head_tail_count -gt $head_head_count ]
 then
      n=`awk "BEGIN {print $(( $head_tail_count  \* 100 / $x ))}"`
     echo  $head_tail_count "times HT occured and win by $n %"
 fi

if [ $tail_tail_count -gt $tail_count ] && [ $tail_tail_count -gt $head_count ] && [ $tail_tail_count -gt $tail_head_count ] && [ $tail_tail_count -gt $head_tail_count ] && [ $tail_tail_count -gt $head_head_count ]
 then
       n=`awk "BEGIN {print $(( $tail_tail_count  \* 100 / $x ))}"`
     echo  $tail_tail_count "times TT occured and win by $n %"
 fi

if [ $tail_head_count -gt $tail_count ] && [ $tail_head_count -gt $tail_tail_count ] && [ $tail_head_count -gt $head_count ] && [ $tail_head_count -gt $head_tail_count ] && [ $tail_head_count -gt $head_head_count ]
 then
       n=`awk "BEGIN {print $(( $tail_head_count  \* 100 / $x ))}"`
     echo  $tail_head_count "times TH occured and win by $n %"
 fi


}
echo "Enter the Number of iterations you wanna perform :"
read x
flipcoin $x
