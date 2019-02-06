accessing definitions
lookupLocallyOrReused: name ifAbsent: aBlock ifPresent: pBlock
	"applies pBlock to the variable corresponding to name, if it is defined in this scope,
	or in one of the scopes that it reuses.
	If name is not defined, return the value of executing aBlock."
	^ self lookupLocally: name 
		ifAbsent: [
			self lookupReused: name 
				ifAbsent: [ aBlock value ]
				ifPresent: pBlock ]
		ifPresent: pBlock