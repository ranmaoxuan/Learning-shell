#! /bin/bash
FILE_PATH=$1
function checkFileExist() {
  if [[ -f $FILE_PATH ]]; then
    return 0
  else
    return 1
  fi
}

echo "Call function checkFileExist"

checkFileExist

if [[ $? -eq 0 ]]; then
  echo "${FILE_PATH} exist"
else

  echo "${FILE_PATH} not exist"
fi
