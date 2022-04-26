#编译
gcc -rdynamic test.c

#输出符号到out.test
nm -n a.out > out.test

#根据打印栈中的符号，查找函数名
awk -f test.awk sysmbolNum=9857ec out.test