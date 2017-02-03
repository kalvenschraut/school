class measure:
	def  __init__(self,x=-1,y=-1):
		if x == -1 and y == -1:
			self.feet = 0
			self.inches =  0
		elif y == -1:
			self.inches = x
			self.feet = 0
		else:
			self.feet = x
			self.inches = y
		if self.inches >= 12:
			self.feet += (self.inches//12)
			self.inches = self.inches%12
	def __str__(self):
		if self.feet == 0 and self.inches == 0:
			return '0"'
		r = ''
		if self.feet != 0:
			r += str(self.feet) + "' "
		if self.inches != 0:
			r += str(self.inches) + '"'
		return r
	def __add__(self,other):
		newMeasure = measure(self.feet + other.feet, self.inches + other.inches)
		return newMeasure	
	def __sub__(self,other):
		feet = self.feet - other.feet
		inches = self.inches - other.inches
		if inches < 0:
			inches += 12
			feet -= 1
		return measure(feet, inches)	
