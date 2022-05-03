#数组例子1
#!/bin/bash
nums=(29 100 13 8 91 44)
echo ${nums[@]}  #输出所有数组元素
nums[10]=66  #给第10个元素赋值（此时会增加数组长度）
echo ${nums[*]}  #输出所有数组元素
echo ${nums[4]}  #输出第4个元素

#数组例子2
nums=(29 100 13)
echo ${#nums[*]} #输出数组的元素个数
#向数组中添加元素
nums[10]="test-str"
echo ${#nums[@]} #输出数组所有元素
echo ${#nums[10]}  #获取指定nums[10]元素的字符串长度
#删除数组元素
unset nums[1]
echo ${#nums[*]}
#遍历数组
for element in ${array[@]}
#也可以写成for element in ${array[*]}
do
echo $element
done
