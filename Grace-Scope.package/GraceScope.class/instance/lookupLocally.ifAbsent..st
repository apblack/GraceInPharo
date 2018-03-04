accessing definitions
lookupLocally: name ifAbsent: aBlock
	"Return the variable corresponding to name, which may or may not be defined in this scope.
	If its is not defined, return the value of executing aBlock."

	^ names at: name ifAbsent: [
		aBlock value ]