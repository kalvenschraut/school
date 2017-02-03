done = False
tstr = "Baboon"
outputList = []
while not done:
    word = input("Enter a word: ")
    if word == "":
        done = True
    else:
        test = False
        i = 0
        while i < len(tstr) and not test:
            if word[0] == tstr[i]:
                outputList.append(word)
                test = True
            i += 1
for element in outputList:
    print(element)    
    
