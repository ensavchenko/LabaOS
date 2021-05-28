#!/bin/bash
let dflag=0;
while getopts a:d optletter
do case $optletter in
       a) aflang=1; aval=$OPTARG;;
       d) dflag=1;;
       *) echo Illegalopttion $optletter
   esac
done
#echo ${aval}
if ((dflag==0))
then for ((i=1;i<=aval;i++))
     do touch ${i}.txt
     done
fi
if ((dflag==1))
then for ((i=1;i<=aval;i++))
     do rm ${i}.txt
     done
fi
