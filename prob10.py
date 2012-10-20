#! /usr/bin/env python
#coding=utf-8
import math

def isPrimer(num):
    factor = 2
    while factor<=math.sqrt(num):
        if(num%factor == 0):
            return False;
        factor += 1
    return True

range = 2000000
i = 2;
res = 0;
while(i < range):
    if(isPrimer(i)):
        res += i
    i+=1

print res