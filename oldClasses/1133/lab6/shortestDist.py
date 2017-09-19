import math
def shortestDist(list1):
    i = 0
    shortdist = 10000000000000
    while i < len(list1):
        j = i + 1
        while j < len(list1):
            x = (list1[i][0] - list1[j][0])**2
            y = (list1[i][1] - list1[j][1])**2
            dist = math.sqrt(x+y)
            if dist < shortdist:
                shortdist = dist
            j+=1
        i+=1
    return shortdist
lista = [[45, -99], [24, 83], [-48, -68], [-97, 99], 
         [-8, -77], [-2, 50], [44, 41], [-48, -58], 
         [-1, 53], [14, 86], [31, 94], [12, -91], 
         [33, 50], [82, 72], [83, -90], [10, 78], 
         [7, -22], [90, -88], [-21, 5], [6, 23]]
dist = shortestDist(lista)
print(dist)
