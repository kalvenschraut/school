def maxValue(vals):
    if len(vals) == 1:
        return vals[0]
    else:
        if vals[0] > maxValue(vals[1:]):
            return vals[0]
        else:
            return maxValue(vals[1:])
print(maxValue([111,6,34,64,4,3021]))
