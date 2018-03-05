accessing definitions
lookupLocallyOrOutwards: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope,
	or in the lexically-enclosing dialect scope, but no further.  We do NOT look in the reused names of this scope. If name is not defined, return the value of executing aBlock."
	^ self lookupLocally: name ifAbsent: [
		outerScope lookupLocallyOrReused: name ifAbsent: [ 
			aBlock value ] ]