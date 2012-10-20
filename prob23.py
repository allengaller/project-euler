#! /usr/bin/env python
#coding=utf-8
import math

def isAbundNum( num ):
    top = math.sqrt(num)
    sum = 1
    div = 2
    while( div < top ):
        if( num%div == 0 ):
            sum += (div+num/div)
        div += 1
    return sum > num

def getResult():
    