month = input("Enter a month: ")
day = input("Enter a day: ")
year = input("Enter a year: ")
oDay = None
oYear = None
oMonth = None
if day < 28:
   day += 1
elif day == 28 and month == "febraury":
   if year%4 == 0:
     oDay = day + 1
   else:
     o
