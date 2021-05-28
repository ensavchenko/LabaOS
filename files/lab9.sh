#!/bin/bash
while getopts i:o:p:Cn optletter
do case $optletter in
       i) iflag=1; ival=$OPTARG;;  
       O) oflag=1; oval=$OPTARG;;   
       p) pflag=1; pval=$OPTARG;;
       C) Cflag=1;; 
       n) rflag=1;;
       *) echo Illegal option $optletter
   esac
done
if (((Cflag==1)&&(nflag==1)))
then grep -e${pval} -i -n ${ival}
     if ((oflag==1))
     then grep -e${pval} -i -n ${ival} > ${oval}
     fi
fi
if (((Cflag==1)&&(nflag==0)))
then grep -e${pval} -i ${ival}
     if ((oflag==1))
     then grep -e${pval}  -i ${ival} > ${oval}
     fi
fi
if (((Lflag==0)&&(rflag==1)))
then grep -e${pval} -n ${ival}
     if ((oflag==1))
     then grep -e${pval} ${ival} > ${oval}
     fi
fi
