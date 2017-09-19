f = open("dummy20.txt")
frequencies = {}
for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
    frequencies[c] = 0
for line in f:
    l = line
    for c in "@[]=+/|{}<>:;,.?\t ~\'\"-_)\\(^`!\n\r*&%$#0123456789":
        l = l.replace(c, '')
    l = l.upper()
    for char in l:
        frequencies[char] += 1

frequencies = [[v,k] for k, v in frequencies.items()]
frequencies.sort()
frequencies.reverse()
for f in frequencies:
    print ("The frequency of", f[1], "is", f[0])
