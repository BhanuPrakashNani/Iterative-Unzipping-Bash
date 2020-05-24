#!/bin/sh

str="tjctf{n0t_th3_fl4g}"
str2=""
x=717
y=717
while [ 0 = 0 ]; do
  str2=$(cat "$y.txt")
  if [[ "$str2" != "$str" ]]; then
    echo $str2
    break
  fi
  x=$((x+1))
  pwdf=$(pwd)
  for file in *; do
    if [[ ${file: -4} == ".kz2" ]]; then
      mv ${file%.*}.kz2 ${file%.*}.zip
      file=${file%.*}.zip
    fi
    if [[ ${file: -4} == ".kz3" ]]; then
      mv ${file%.*}.kz3 ${file%.*}.zip
      file=${file%.*}.zip
    fi
    if [[ ${file: -4} == ".zip" ]]; then
      unzip *.zip
      echo $x
    fi
    if [[ ${file: -7} == ".tar.gz" ]]; then
      tar -zxf *.tar.gz
      echo $x
    fi
    if [[ ${file: -8} == ".tar.bz2" ]]; then
      tar -jxf *.tar.bz2
      echo $x
    fi
  done
  cd $x
  y=$((y+1))
done
