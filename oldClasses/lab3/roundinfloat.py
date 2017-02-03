n = float(input("Input a number to be rounded: "))
decimal = n%1
if decimal != 0.0:
   if decimal >= 0.5:
      wholeN = n//1
      wholeN = wholeN + 1
      print(int(wholeN))
   elif decimal < 0.5:
      wholeN = n//1
      print(int(wholeN))
else:
 print(int(n))
