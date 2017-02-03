import math

class vec3:
    def __init__(self, values = None):
        if values == None:
            self.setValues([0,0,0])
        else:
            self.setValues(values)

    def __str__(self):
        return "[" + str(self.x) + ", " + str(self.y) + ", " + str(self.z) + "]"

    def vlist(self):
        return [self.x, self.y, self.z]

    def setValues(self, values):
        self.x = float(values[0])
        self.y = float(values[1])
        self.z = float(values[2])

    def __float__(self):
        discriminant = self.x**2 + self.y**2 + self.z**2
        return math.sqrt(discriminant)

    def __add__(self, other):
        return vec3([self.x + other.x, \
                    self.y + other.y, \
                    self.z + other.z])

    def __truediv__(self, amount):
        amount = float(amount)
        return vec3([self.x / amount, \
                    self.y / amount, \
                    self.z / amount])

f1 = input("Enter force 1: ").split()
force1 = vec3(f1)
f2 = input("Enter force 2: ").split()
force2 = vec3(f2)
mass = input("Enter mass: ")

print ("Acceleration is", (force1 + force2) / mass)

