f = open("earthquake.csv")
line = f.readline()
columns = line.replace('\n','').split(',')
for i in range(len(columns)):
	print(i,columns[i])

print()
print("-"*20)
print()

data = []
for line in f:
        info = line.replace('\n','').split(',')
        magnitude = info[4]
        location = info[14].replace('"', '')
        data += [magnitude + "\t" + location]
data.sort()
for d in data:
        print (d)
f.close()
