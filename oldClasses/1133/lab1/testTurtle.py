import turtle
t = turtle.Turtle()
screen = turtle.Screen();
screen_x, screen_y = screen.screensize()

t.pencolor('red')
t.pensize(10)
t.pendown()
for i in range(150):
	t.forward(100 + i + 10)
	t.right(90)
dummy = input()
