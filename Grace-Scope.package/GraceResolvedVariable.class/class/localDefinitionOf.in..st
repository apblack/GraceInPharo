instance creation
localDefinitionOf: aName in: aScope
	| def |
	def := aScope lookupLocally: aName ifAbsent: [ ^ nil ].
	^ self new
		definition: def;
		isReused: false;
		objectsUp: 0;
		definingScope: aScope;
		yourself