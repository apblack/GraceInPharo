definition collection
reusedDefinitionOf: aName in: aScope addTo: aCollection
	| def |
	aScope areReusedNamesCompleted ifFalse: [ ^ aCollection ].
		"if reusedNames have not been completed, we are being asked to resolve the superExpression of a reuse statement, and trying to complete them will lead to infinite regress"
	def := aScope lookupReused: aName ifAbsent: [ ^ aCollection ].
	aCollection add: (self reusedDefinition: def).
	^ aCollection