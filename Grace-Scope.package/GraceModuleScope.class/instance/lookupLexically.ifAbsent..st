accessing definitions
lookupLexically: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope, or in the surroundng dialect scope, but no further.  If name is not defined, return the value of executing aBlock.
	 Note that this method ignores reused names; it is intended for implementing Grace's shadowing check"
	
	^ self lookupLocally: name ifAbsent: [ 
			outerScope lookupLocally: name ifAbsent: [
				aBlock value ] ]