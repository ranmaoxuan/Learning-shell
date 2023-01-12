#! /bin/bash

#通过souce引用 lib01.sh函数库，这样就可以复用 lib01.sh 函数里面的方法,需要将引用的函数库权限设置为可执行,通过 chmod a+xlib01.sh
source ./lib01.sh

checkFileExists /etc/noadf
checkFileExists /etc/passwd

success
