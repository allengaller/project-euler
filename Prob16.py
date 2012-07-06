#! /usr/bin/env python
#coding=utf-8
import math

i = 100
prod = 1
while(i>1):
    prod *= i
    i -= 1

sum = 0
while(prod > 0):
    sum += math.floor(prod%10)
    prod /= 10
    prod = math.floor(prod)

print sum