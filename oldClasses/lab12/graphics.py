import random
import turtle
def randColor():
	ilist = ["red","yellow","green","blue","purple","orange"]
	idx = random.randint(0,len(ilist)-1)
	return ilist[idx]
class Shape:
	def __init__(self,x=0,y=0,color="",filled=False):
		self.x = x
		self.y = y
		self.color = color
		self.filled = filled
	def setFillcolor(self,istr):
		self.color = istr
	def setFilled(self,ibool):
		self.filled = ibool
	def isFilled(self):
		return self.filled
class Circle(Shape):
	def __init__(self,x=0,y=0,radius=1,color="",filled=False):
		self.radius = radius
		super().__init__(x,y,color,filled)
	def draw(self,turtle):
		turtle.hideturtle()
		turtle.penup()
		turtle.goto(self.x,self.y)
		if self.isFilled():
			turtle.fillcolor(self.color)
			turtle.begin_fill()
		turtle.pendown()
		turtle.circle(self.radius)
		if self.isFilled():
			turtle.end_fill()
		turtle.hideturtle()
	def isIN(self,x,y):
		isInx = False
		isIny = False
		if (x > 0 and self.x > 0) or (x < 0 and self.x < 0):
			if x <= self.x + self.radius*2:
				isInx = True
		if (y > 0 and self.y > 0) or (y < 0 and self.y < 0):
			if y <= self.y + self.radius*2:
				isIny = True
		if isIny and isInx:
			return True
class Rectangle(Shape):
	def __init__(self,x=0,y=0,width=1,height=1,color="",filled=False):
		self.width = width
		self.height = height
		super().__init__(x,y,color,filled)
	def draw(self,turtle):
		turtle.hideturtle()
		turtle.penup()
		turtle.goto(self.x,self.y)
		if self.isFilled():
			turtle.fillcolor(self.color)
			turtle.begin_fill()
		turtle.goto(self.x - self.width/2,self.y - self.height/2)
		turtle.pendown()
		turtle.goto(self.x + self.width/2,self.y - self.height/2)
		turtle.goto(self.x + self.width/2,self.y + self.height/2)
		turtle.goto(self.x - self.width/2,self.y + self.height/2)
		turtle.goto(self.x - self.width/2,self.y - self.height/2)
		if self.isFilled():
			turtle.end_fill()
		turtle.hideturtle()
	def isIN(self,x,y):
		isInx = False
		isIny = False
		if x <= self.x + self.width/2  and x >= self.x - self.width/2:
			isInx = True
		if y <= self.y + self.height/2  and y >= self.y - self.height/2:
			isIny = True
		if isIny and isInx:
			return True
class Display:
	def __init__(self):
		self.turt = turtle.Turtle()
		self.scr = turtle.Screen()
		self.elements = []
		self.turt.speed(0)
		self.scr.delay(0)
		self.turt.hideturtle()
		self.scr.onscreenclick(self.mouseEvent)
	def mouseEvent(self,x,y):
		for element in self.elements:
			if element.isIN(x,y):
				self.remove(element)
				return
		radius = random.randint(10,100)
		width  = random.randint(10,100)
		height = random.randint(10,100)
		whichShape = random.randint(1,2)
		color = randColor()
		shape = None
		if whichShape == 1:
			shape = Circle(x,y,radius,color,True)
		else:
			shape = Rectangle(x,y,width,height,color,True)
		self.turt.penup()
		self.turt.goto(x,y)
		self.turt.pendown()
		self.turt.fillcolor(color)
		self.turt.begin_fill()
		self.add(shape)
		self.turt.end_fill()
	def add(self,shape):
		self.elements.append(shape)
		shape.draw(turtle.Turtle())
	def remove(self,shape):
		self.elements.remove(shape)
		turtle.clearscreen()
		self.turt.speed(0)
		self.scr.delay(0)
		for element in self.elements:
			element.draw(self.turt)
		self.scr.onscreenclick(self.mouseEvent)
def workout():
	test = Display()
def stretch():
	x = int(input("Enter a x position: "))
	y = int(input("Enter a y position: "))
	radius = int(input("Enter a radius: "))
	color = input("Enter a color: ")
	filled = False
	if color:
		filled = True
	circles = Circle(x,y,radius,color,True)
	circles.draw(turtle.Turtle())
