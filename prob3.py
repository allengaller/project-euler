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

def getMaxPrimerFacor(num):
    factor = math.floor(math.sqrt(num))
    while factor > 1:
        if(num % factor == 0 and isPrimer(factor)):
            return factor
        factor -= 1
    return 1
    
big = 600851475143
print getMaxPrimerFacor(big)
print isPrimer(6857)

    