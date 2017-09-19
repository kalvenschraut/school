import turtle
import random
def tree(t,trunkLength):
    if trunkLength < 5:
        return
    else:
        angle = random.randint(15,45)
        dif = random.randint(12,18)
        t.forward(trunkLength)
        t.right(angle)
        tree(t,trunkLength-dif)
        t.left(2*angle)
        tree(t,trunkLength-dif)
        t.right(angle)
        t.backward(trunkLength)
myturt = turtle.Turtle()
myturt.left(90)
tree(myturt,100)
