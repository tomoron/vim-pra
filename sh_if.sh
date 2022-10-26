#!/bin/sh

ARG="test"
if [ "$1" == "$ARG" ]
then 
  echo "第一引数がtestです"
else
  echo "引数がありません"
fi
