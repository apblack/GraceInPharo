accessing definitions
lookupLocallyOrOuter: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope,
	or in one of the lexically-enclosing scopes.  We do NOT look in the reused names of this scope.
	If name is not defined, return the value of executing aBlock."
	^ self lookupLocally: name ifAbsent: [
		outerScope lookup: name ifAbsent: [ 
			aBlock value ] ]