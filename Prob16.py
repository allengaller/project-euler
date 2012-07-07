#! /usr/bin/env python
#coding=utf-8
import math

i = 1000
prod = math.pow(2,i)
print prod
sum = 0
while(prod > 0):
    sum += math.floor(prod%10)
    prod /= 10
    prod = math.floor(prod)

print sum