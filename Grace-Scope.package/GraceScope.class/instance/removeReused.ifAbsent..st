adding & removing reused
removeReused: aName ifAbsent: aBlock

	self assert: (aName isKindOf: String).
	reusedNames removeKey: aName ifAbsent: aBlock

	