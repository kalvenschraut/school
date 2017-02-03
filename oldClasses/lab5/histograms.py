import random
dieList  = [2,3,4,5,6,7,8,9,10,11,12]
dieOccur = [0,0,0,0,0,0,0,0,0,0,0]
i = 0
while i < 10000:
    die1 = random.randint(1,6)
    die2 = random.randint(1,6)
    dieSum = die2 + die1
    j = 0
    while j < len(dieList):
        if dieSum == dieList[j]:
            dieOccur[j] += 1
        j += 1
    i += 1
print("Total for 2: ",dieOccur[0])        
print("Total for 3: ",dieOccur[1])     
print("Total for 4: ",dieOccur[2])
print("Total for 5: ",dieOccur[3])
print("Total for 6: ",dieOccur[4])
print("Total for 7: ",dieOccur[5])
print("Total for 8: ",dieOccur[6])
print("Total for 9: ",dieOccur[7])
print("Total for 10: ",dieOccur[8])
print("Total for 11: ",dieOccur[9])
print("Total for 12: ",dieOccur[10]) 
