#! /bin/bash
echo "Which car do you prefer?"
select car in A B CO; do
  echo $car
  if [[ $car == "" ]]; then
    echo "Wrong,please try again."
    continue
  else
    break

  fi
done
echo "You select car is $car"
