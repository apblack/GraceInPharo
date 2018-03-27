I represent a variable declaration, that is, one of:

	- a def field in an object (an attribute)
	- a var field in an object (an attribute)
	- a def in a method or block, that is, outside an object (a temporary)
	- a var in a method or block, that is, outside an object (a temporary)
	
The four cases are distinguished with the instance variables and corresponding `testing` methods:
	
	- isAttribute (= ¬ isTemp)
	- isdef (= ¬ isVar)