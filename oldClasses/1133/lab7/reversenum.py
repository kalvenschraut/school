def reverseNum(n):
    if n%10 == 0:
        return
    else:
        print(n%10,end="")
        reverseNum(n//10)

reverseNum(651762)    
                                   
    
