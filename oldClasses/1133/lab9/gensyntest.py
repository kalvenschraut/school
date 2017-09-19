import random
file = input("Enter name of file: ")
f = open(file,"w")
for i in range(1000):
	f.write(str(i))
	f.write(',')
	f.write(str(random.randint(-1000,1000)))
	f.write('\n')

