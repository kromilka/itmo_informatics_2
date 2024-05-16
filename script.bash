#!/bin/bash

function dec_to_bin() {
  n=$1
  bits=""
  while [[ ${#bits} -lt 8 ]]; do
      bits="$(( n & 1 ))$bits";
      : $(( n >>= 1))
  done
  printf "%s\n" "$bits"
}

ip_input=$1
IFS="."
array=($ip_input)
for i in {0..3} 
   do
      array[i]=$(dec_to_bin ${array[i]});
   done
echo "${array[0]}.${array[1]}.${array[2]}.${array[3]}"

