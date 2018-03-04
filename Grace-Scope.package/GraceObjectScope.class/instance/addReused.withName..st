adding & removing reused
addReused: aVariable withName: aName

	reusedNames at: aName put: aVariable.
	^ aVariable

	