adding & removing reused
addReused: aVariable withName: aName

	self assert: (aName isKindOf: String).
	self assert: (aVariable isKindOf: GraceAbstractVariable).
	reusedNames at: aName put: aVariable.
	^ aVariable

	