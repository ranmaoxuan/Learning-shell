#! /bin/bash

select day in Mon Tue Wed Thu; do

  case $day in
  Mon)
    echo "Tody is Monday"
    ;;
  Tue)
    echo "Tody is Tuesday"
    ;;
  Wed | Thu)
    echo "You can have a rest today"
    ;;
  *)
    echo "Unknown you input,exit now" & break
    ;;
  esac

done
