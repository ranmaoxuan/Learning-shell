#! /bin/bash

function factoria101() {

  local NUMBER=$1
  if [ $NUMBER -le 0 ]; then
    RES=1
  else
    factoria101 $((NUMBER-1))
    TEMP=$RES
    NUMBER=$NUMBER
    let "RES=NUMBER*TEMP"
  fi
}

factoria101 $1
echo $RES
