testing
lookup: name
	"Retrieve the variable corresponding to name, which must be defined in this scope, 
	or in one of the lexically surrounding scopes."
	self assert: (name isKindOf: String).
	^ names at: name ifAbsent: [ 
			outerScope lookup: name ifAbsent: [
				^ self error: name , ' was not found in any lexical scope' ]
	]