accessing definitions
lookup: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope, 
	or in one of the lexically surrounding scopes.  If its is not defined, return the value
	of executing aBlock."
	
	^ self lookupLocallyOrReused: name ifAbsent: [ 
			outerScope lookup: name ifAbsent: [
				aBlock value ] ]