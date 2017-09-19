import turtle
def drawSquare(myTurtle,length,angle):
    myTurtle.left(angle)
    i = 0
    while i < 4:
        myTurtle.forward(length)
        myTurtle.left(90)
        i+=1
def squares(turtle,squares):
    i = 0
    angleInc = 360/squares
    angle = 0
    while i < squares:
        drawSquare(turtle,100,angle)
        i += 1
        angle = 360/squares
squaresN = eval(input("Enter the amount of squares you want to draw: "))
squares(turtle.Turtle(),squaresN)
