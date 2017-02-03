import math
def rootN(n,root):
    done = False
    x = 1
    while not done:
        calc = (1/root)*(((root-1)*x)+(n/(x**(root-1))))
        if calc**root <= n+.01 and calc**root >= n-.01:
            print(calc)
            done = True
        else:
            x += .01
done = False
while not done:
    istr = input(" Enter a value and root: ")
    rootN(eval(istr[0]),eval(istr[-1]))
    bol = input("Do you want to continue: (y or n) ")
    if bol == 'n' or bol == 'N':
        done = True
    
        
