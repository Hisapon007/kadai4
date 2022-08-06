#!/bin/bash


sh /home/z22084kh/kadai4/gcd.sh 84 16

if [ $? -ne 0 ]; then
    echo "error"
fi

sh /home/z22084kh/kadai4/gcd.sh 84 16 10

if [ $? -ne 0 ]; then
    echo "sh gcd.sh 84 16 10 is error"
fi

sh /home/z22084kh/kadai4/gcd.sh 84

if [ $? -ne 0 ]; then
    echo  "sh gcd.sh 84 is error"
fi

sh /home/z22084kh/kadai4/gcd.sh

if [ $? -ne 0 ]; then
    echo "sh gcd.sh is error"
fi

sh /home/z22084kh/kadai4/gcd.sh -84 -16

if [ $? -ne 0 ]; then
    echo "sh gcd.sh -84 -16 is error"
fi

sh /home/z22084kh/kadai4/gcd.sh aaa bbb

if [ $? -ne 0 ]; then
    echo "sh gcd.sh aaa bbb is error"
fi
