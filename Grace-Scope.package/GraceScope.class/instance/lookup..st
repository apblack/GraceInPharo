accessing definitions
lookup: name
	"Retrieve the variable corresponding to name, which must be defined in this scope, 
	or in one of the lexically surrounding scopes."
	^ self lookup: name ifAbsent: [
				self error: name , ' was not found in any lexical scope' ]