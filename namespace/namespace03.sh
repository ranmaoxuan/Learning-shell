#! /bin/bash
var_02=300
function ch_var()
{
  # 在函数体内使用local关键字声明了和全局变量同名的局部变量后，对该变量的操作只会影响局部变量，而不会影响与之同名的全局变量。
  local var_02=900
  var_02=900
}

echo "Before function value var_02:$var_02"
ch_var
echo "After function value var_02:$var_02"
