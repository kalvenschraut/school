istr = input("input your hand: ")
pointS =     ['2','3','4','5','6','7','8','9','T','J','Q','K','A']
pointCount = [0,0,0,0,0,0,0,0,0,0,0,0,0]
pointVal =   [2,3,4,5,6,7,8,9,10,10,10,10,11,1]
i = 0
while i < len(istr):
    j = 0
    while j < len(pointS):
        if istr[i] == pointS[j]:
            pointCount[j] += 1
        j += 1
    i += 1
i = 0
valSum = 0
while i < len(pointCount):
    tempVal = pointVal[i]*pointCount[i]
    valSum += tempVal
    i += 1
if pointCount[12] > 0:
    if valSum > 21:
        valSum -= 11
        valSum += 1
    elif (valSum - 1) + 11 <= 21:
        valSum -= 1
        valSum += 11
print(valSum)
        
    
