#! /usr/bin/env python
#coding=utf-8
def chainLenth(num):
    count = 0
    while(num != 1):
        count += 1
        if(num % 2 == 0):
            num /= 2
        else:
            num = 3*num+1
    return count

num = 999999
maxL = 0
maxN = 0
while(num > 333333):
    cL = chainLenth(num)
    if(cL > maxL):
        maxL = cL
        maxN = num
    num -= 1

print maxL
print maxN