<!-- 
.. title: eyeCode Programs
.. slug: eyecode-programs
.. date: 2013/04/18 11:12:53
.. tags: 
.. link: 
.. description: 
-->

[TOC]

## between

### functions

	:::python
	def between(numbers, low, high):
	    winners = []
	    for num in numbers:
	        if (low < num) and (num < high):
	            winners.append(num)
	    return winners
	
	def common(list1, list2):
	    winners = []
	    for item1 in list1:
	        if item1 in list2:
	            winners.append(item1)
	    return winners
	
	x = [2, 8, 7, 9, -5, 0, 2]
	x_btwn = between(x, 2, 10)
	print x_btwn 
	
	y = [1, -3, 10, 0, 8, 9, 1]
	y_btwn = between(y, -2, 9)
	print y_btwn 
	
	xy_common = common(x, y)
	print xy_common 

### inline

	:::python
	x = [2, 8, 7, 9, -5, 0, 2]
	x_between = []
	for x_i in x:
	    if (2 < x_i) and (x_i < 10):
	        x_between.append(x_i)
	print x_between
	
	y = [1, -3, 10, 0, 8, 9, 1]
	y_between = []
	for y_i in y:
	    if (-2 < y_i) and (y_i < 9):
	        y_between.append(y_i)
	print y_between
	
	xy_common = []
	for x_i in x:
	    if x_i in y:
	        xy_common.append(x_i)
	print xy_common

## counting

### nospace

	:::python
	for i in [1, 2, 3, 4]:
	    print "The count is", i
	    print "Done counting"

### twospaces

	:::python
	for i in [1, 2, 3, 4]:
	    print "The count is", i 
	
	
	    print "Done counting" 

## funcall

### nospace

	:::python
	def f(x):
	    return x + 4
	
	print f(1)*f(0)*f(-1)

### space

	:::python
	def f(x):
	    return x + 4
	
	print f(1) * f(0) * f(-1)

### vars

	:::python
	def f(x):
	    return x + 4
	
	x = f(1)
	y = f(0)
	z = f(-1)
	print x * y * z

## initvar

### bothbad

	:::python
	a = 0
	for i in [1, 2, 3, 4]:
	    a = a * i
	print a
	
	b = 1
	for i in [1, 2, 3, 4]:
	    b = b + i
	print b

### good

	:::python
	a = 1
	for i in [1, 2, 3, 4]:
	    a = a * i
	print a
	
	b = 0
	for i in [1, 2, 3, 4]:
	    b = b + i
	print b

### onebad

	:::python
	a = 1
	for i in [1, 2, 3, 4]:
	    a = a * i
	print a
	
	b = 1
	for i in [1, 2, 3, 4]:
	    b = b + i
	print b

## order

### inorder

	:::python
	def f(x):
	    return x + 4
	
	def g(x):
	    return x * 2
	
	def h(x):
	    return f(x) + g(x)
	
	x = 1
	a = f(x)
	b = g(x)
	c = h(x)
	print a, b, c

### shuffled

	:::python
	def h(x):
	    return f(x) + g(x)
	
	def f(x):
	    return x + 4
	
	def g(x):
	    return x * 2
	
	x = 1
	a = f(x)
	b = g(x)
	c = h(x)
	print a, b, c

## overload

### multmixed

	:::python
	a = 4
	b = 3
	print a * b
	
	c = 7
	d = 2
	print c * d
	
	e = "5"
	f = "3"
	print e + f

### plusmixed

	:::python
	a = 4
	b = 3
	print a + b
	
	c = 7
	d = 2
	print c + d
	
	e = "5"
	f = "3"
	print e + f

### strings

	:::python
	a = "hi"
	b = "bye"
	print a + b
	
	c = "street"
	d = "penny"
	print c + d
	
	e = "5"
	f = "3"
	print e + f

## partition

### balanced

	:::python
	for i in [1, 2, 3, 4, 5]:
	    if (i < 3):
	        print i, "low"
	    if (i > 3):
	        print i, "high"

### unbalanced

	:::python
	for i in [1, 2, 3, 4]:
	    if (i < 3):
	        print i, "low"
	    if (i > 3):
	        print i, "high"

### unbalanced_pivot

	:::python
	pivot = 3
	for i in [1, 2, 3, 4]:
	    if (i < pivot):
	        print i, "low"
	    if (i > pivot):
	        print i, "high"

## rectangle

### basic

	:::python
	def area(x1, y1, x2, y2):
	    width = x2 - x1
	    height = y2 - y1
	    return width * height
	
	r1_x1 = 0
	r1_y1 = 0
	r1_x2 = 10
	r1_y2 = 10
	r1_area = area(r1_x1, r1_y1, r1_x2, r1_y2)
	print r1_area
	
	r2_x1 = 5
	r2_y1 = 5
	r2_x2 = 10
	r2_y2 = 10
	r2_area = area(r2_x1, r2_y1, r2_x2, r2_y2)
	print r2_area

### class

	:::python
	class Rectangle:
	    def __init__(self, x1, y1, x2, y2):
	        self.x1 = x1
	        self.y1 = y1
	        self.x2 = x2
	        self.y2 = y2
	
	    def width(self):
	        return self.x2 - self.x1
	
	    def height(self):
	        return self.y2 - self.y1
	
	    def area(self):
	        return self.width() * self.height()
	
	rect1 = Rectangle(0, 0, 10, 10)
	print rect1.area()
	
	rect2 = Rectangle(5, 5, 10, 10)
	print rect2.area()

### tuples

	:::python
	def area(xy_1, xy_2):
	    width = xy_2[0] - xy_1[0]
	    height = xy_2[1] - xy_1[1]
	    return width * height
	
	r1_xy_1 = (0, 0)
	r1_xy_2 = (10, 10)
	r1_area = area(r1_xy_1, r1_xy

## scope

### diffname

    :::python
    def add_1(num):
        num = num + 1

    def twice(num):
        num = num * 2

    added = 4
    add_1(added)
    twice(added)
    add_1(added)
    twice(added)
    print added

### samename

    :::python
    def add_1(added):
        added = added + 1

    def twice(added):
        added = added * 2

    added = 4
    add_1(added)
    twice(added)
    add_1(added)
    twice(added)
    print added

## whitespace

### linedup

    :::python
    intercept = 1
    slope     = 5

    x_base  = 0
    x_other = x_base + 1
    x_end   = x_base + x_other + 1

    y_base  = slope * x_base  + intercept
    y_other = slope * x_other + intercept
    y_end   = slope * x_end   + intercept

    print x_base,  y_base
    print x_other, y_other
    print x_end,   y_end

### zigzag

    :::python
    intercept = 1
    slope = 5

    x_base = 0
    x_other = x_base + 1
    x_end = x_base + x_other + 1

    y_base = slope * x_base + intercept
    y_other = slope * x_other + intercept
    y_end = slope * x_end + intercept

    print x_base, y_base
    print x_other, y_other
    print x_end, y_end
