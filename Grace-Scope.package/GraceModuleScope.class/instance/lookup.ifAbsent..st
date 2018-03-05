accessing definitions
lookup: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope, 
	or in the surroundng dialect scope, but no further.  If name is not defined, return the value
	of executing aBlock."
	
	^ self lookupLocallyOrReused: name ifAbsent: [ 
			outerScope lookupLocallyOrReused: name ifAbsent: [
				aBlock value ] ]