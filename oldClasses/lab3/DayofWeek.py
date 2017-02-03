month = int(input("Input a month: "))
day = int(input("Input a day: "))
year = int(input("Input a year: "))

outputMonth = month
outputYear = year
if month == 1 or month == 2:
   month = month + 12
   year = year - 1
dayN = day+5
dayN = dayN+(26*(month+1))//10
dayN = dayN+(5*(year%100))//4
dayN = dayN+(21*(year//100))//4
dayN = dayN%7
days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
print(str(outputMonth),"/",str(day),"/",str(outputYear)," is a ",days[dayN])
