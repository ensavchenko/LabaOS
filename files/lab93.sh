#!/bin/bash
gcc -o cprog lab92.c
./cprog
case $? in
    0)echo 'input number is equal to 0';;
    1)echo 'input number is smaller then 0';;
    2)echo 'input number is bigger then 0';;
esac
