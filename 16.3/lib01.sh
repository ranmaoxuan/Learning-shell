#! /bin/bash
checkFileExists() {
  if [ -f $1 ]; then
    echo "File:$1 exists"
  else
    echo "file:$1 not exist"
  fi
}
