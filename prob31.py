#! /usr/bin/env python
#coding=utf-8
#1 2 5 10 20 50 100 200
def solve():
    cnt = 0
    for i in range(0,200):
        one = i
        for j in range(0,100):
            two = j*2
            if one+two > 200:
                continue
            for k in range(0,40):
                five = k*5
                if one+two+five > 200:
                    continue            
                for x in range(0,20):
                    ten = x*10
                    if one+two+five+ten > 200:
                        continue
                    for y in range(0,10):
                        twet =  y*20
                        if one+two+five+ten+twet > 200:
                            continue
                        for z in range(0,4):
                            fift = z*50
                            if one+two+five+ten+twet+fift > 200:
                                continue
                            for w in range(0,2):
                                hund = w*100
                                if 200 == one+two+five+ten+twet+fift+hund:
                                    cnt += 1
    print cnt+8
    return cnt+8

solve()
#import profile
#profile.run("solve()")
                                    
