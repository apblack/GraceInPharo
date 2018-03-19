I describe a Grace interface type

instance variables 
	knownSuperTypes -- a set containing types to which it is known that I conform 
							(because this has been calculated previosuly)
	methodDict -- a dictionary containing my method names as keys, and their signatures as values.
	typeName -- the name of this interface type, if it has been given a name in a type declaration. 					Otherwise, it will be know as an anonymous interface type.