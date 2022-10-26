#!/bin/sh

if [ "$1" == "ruby" ]
then
  "$1" "$2"
else
  echo "引数が不正でした"
fi
