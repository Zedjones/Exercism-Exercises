from math import gcd

def euler(x):
    num = 0
    for i in range(1, x):
        if gcd(x, i) == 1:
            num += 1 
    return num