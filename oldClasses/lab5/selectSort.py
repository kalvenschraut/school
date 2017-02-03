import random
n = int(input("Enter the number of elements: "))
i = 0
nList = []
while i < n:
    number = random.randint(1,50)
    nList.append(number)
    i += 1
print(nList)
i = 0
counter = 0
counter2 = 0
done = False
while not done:
    test = 51
    i = counter2
    while i < len(nList):
        if nList[i] < test:
            test = nList[i]
            counter = i
        i += 1
    nList[counter] = nList[counter2]
    nList[counter2] = test
    counter2 += 1
    if counter2 == n:
        done = True
print(nList)

    
