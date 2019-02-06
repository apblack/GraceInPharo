accessing definitions
lookup: name ifAbsent: aBlock ifPresent: pBlock
	"applies pBlock to the variable corresponding to name, if it is defined in this scope, 
	or in one of the lexically surrounding scopes.  If it is not defined, return the value
	of executing aBlock."
	
	self lookupLocallyOrReused: name 
		ifAbsent: [ 
			outerScope lookup: name 
				ifAbsent: aBlock
				ifPresent: pBlock ]
		ifPresent: pBlock