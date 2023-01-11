#! /bin/bash

function power() {
  RESULT=1
  LOOP=0
  while [[ $LOOP -lt $2 ]]; do
    let "RESULT=RESULT*$1"
    let "LOOP=LOOP+1"
  done
  echo $RESULT
}

echo "Call function power with parameters:"

power $1 $2

