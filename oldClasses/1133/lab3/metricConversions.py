scalar = float(input("Input a measurement: "))
unit   = input("Input a unit: ")
output = None
if unit == "pounds":
    output = scalar*0.453592
elif unit == "ounces":
    output = scalar*28.3495
elif unit == "miles":
    output = scalar*1.60934
elif unit == "inches":
    output = scalar*2.54
elif unit == "kilos":
    output = scalar*2.20462
elif unit == "grams":
    output = scalar*0.035274
elif unit == "kilometers":
    output = scalar*0.621371
elif unit == "centimeters":
    output = scalar*0.393701
else:
   print("Please enter a correct unit type") 
if output != None:
   print(output)
