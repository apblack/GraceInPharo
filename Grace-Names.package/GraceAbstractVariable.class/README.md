The superclass of classes that describe the various kinds of variable 
in a GraceProgram.  

The common interface lets clients ask

	isAssignable  — true for vars only
	isType — true for types only
	isMethod — true for methods, both implicit & explicit
	isExplicitMethod — true for expliict methods only
	kind — a string ('var', 'def', 'method', 'parameter' etc.)
	definingNode — the parse tree node that defines this variable
	range — the source-code range of my declaration
	startPosition — the start of the range
	stopPosition  — the end of the range
	attributeScope — charcterizes the attributes of the  object bound
		to this variable.  For example, if I am a def bound to an object,
		then attributeScope descriebs the attibutes of that object.