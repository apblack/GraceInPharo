The superclass of classes that describe the various kinds of variable 
in a GraceProgram.  

The common interface lets clients ask

	isAssignable  — true for vars only
	isType — true for types only
	isMethod — true for methods, both implicit & explicit
	isExplicitMethod — true for expliict methods only
	kind — a string ('var', 'def', 'method', 'parameter' etc.)
	range — the source-code range of my declaration
	startPosition — the start of the range
	stopPosition  — the end of the range