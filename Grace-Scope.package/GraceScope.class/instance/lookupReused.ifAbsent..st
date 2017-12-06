testing
lookupReused: name ifAbsent: aBlock
	"Return the variable corresponding to name, if it is defined in a scope that this 
	scope reuses.	If it is not defined, return the value of executing aBlock."
	self assert: (name isKindOf: String).
	^ reusedNames at: name ifAbsent: [ aBlock value ]