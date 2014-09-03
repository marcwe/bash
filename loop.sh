#!/bin/bash
identify=/usr/bin/identify
FILES=*.jpg
for f in $FILES
do
#  echo identify $f |cut -d\  -f3|cut -dx -f1
#  echo identify $f |cut -d\   -f3|cut -dx -f2
  w=$($identify $f |cut -d\  -f3|cut -dx -f1)
  h=$($identify $f |cut -d\   -f3|cut -dx -f2)
  echo $w
  echo $h
#  echo $Files
  echo $f
  echo "line last"
done
