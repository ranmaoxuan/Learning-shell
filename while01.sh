#! /bin/bash

CONTRE=5
while [ $CONTRE -gt 0 ]
do
  echo -n $CONTRE
  let "CONTRE-=1"
done

