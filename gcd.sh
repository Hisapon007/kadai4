#!/bin/bash

if [ -z "$1" ]; then
  exit 1
fi

if [ -z "$2" ]; then
  exit 1
fi

if [ -n "$3" ]; then
  exit 1
fi

if expr "$1" : "[0-9]*$" > /dev/null 2>&1; then
  :
else
  exit 1
fi

if expr "$2" : "[0-9]*$" > /dev/null 2>&1; then
  :
else
  exit 1
fi

if [ $1 -lt 0 ]; then
  exit 1
fi

if [ $2 -lt 0 ]; then
  exit 1
fi

x=$1
y=$2

while [ $y -ne 0 ]
do
  amari=$(($x % $y))

  x=$y
  y=$amari
done

result=$x

echo $result

exit 0
