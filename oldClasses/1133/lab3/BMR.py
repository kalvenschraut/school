print("Enter your gender")
gender = input()
print("Enter your weight in pounds")
weight = float(input())
print("Enter your height in inches")
height = float(input())
print("Enter your age in years")
age = float(input())
if gender == "m" or gender == "M":
   bmr = 66 + (6.3*weight) + (12.9*height) - (6.8*age)
   bars = bmr//230
   if bmr%230 != 0:
      bars = bars + 1;
   print(bars)
elif gender =="f" or gender == "F":
   bmr = 655 + (4.3*weight) + (4.7*height) - (4.7*age)
   bars = bmr//230
   if bmr%230 != 0:
      bars = bars + 1;
   print(bars)
else:
   print("please enter f or m")
