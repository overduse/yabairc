#!/bin/bash

# load lib
. $(dirname $0)/spacebar-lib.sh

arr=(
"`volume`"
"`ip`"
# "`id`"
)

res=""

arrLength=${#arr[@]}
for ((i=0;i<${arrLength};i++))
do
  out=${arr[i]}
  [[ $i != $((arrLength - 1)) ]] && out="${out} | "
  res="$res$out"
done

echo $res
