definition collection
localDefinitionOf: aName in: aScope
	| def |
	def := aScope lookupLocally: aName ifAbsent: [ ^ nil ].
	^ self localDefinition: def