accessing definitions
lookupLexically: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope, or in one of the lexically surrounding scopes.  If name is not defined, return the value of executing aBlock.
	 Note that this method ignores reused names; it is intended for implementing Grace's shadowing check"
	
	^ self lookupLocally: name ifAbsent: [ 
			outerScope lookupLexically: name ifAbsent: [
				aBlock value ] ]