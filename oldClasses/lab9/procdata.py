fname = input("Enter name of the file: ")
minnum = 0
maxnum = 0
for line in open(fname):
	num = line.split(',')[1]
	num = int(num)
	if num > maxnum:
		maxnum = num
	if num < minnum:
		minnum = num
print(minnum,maxnum)
