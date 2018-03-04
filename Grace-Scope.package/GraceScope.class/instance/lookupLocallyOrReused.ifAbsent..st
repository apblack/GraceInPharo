accessing definitions
lookupLocallyOrReused: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope,
	or in one of the scopes that it reuses.
	If name is not defined, return the value of executing aBlock."
	^ self lookupLocally: name ifAbsent: [
		self lookupReused: name ifAbsent: [ 
			aBlock value ] ]