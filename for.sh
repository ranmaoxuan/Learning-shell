#! /bin/bash
array={a..g}
ls_array=$(ls -l)

# echo ${ls_array[0]}
for var in {a..g}
do
  echo $var
done
echo "end for"
