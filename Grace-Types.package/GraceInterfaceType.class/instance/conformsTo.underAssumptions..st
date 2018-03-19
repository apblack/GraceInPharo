conformance
conformsTo: anotherObjectType underAssumptions: assumptionsDictionary
	anotherObjectType isUnknown ifTrue: [ ^ true ].
	anotherObjectType == self ifTrue: [ ^ true ].
	(assumptionsDictionary at: self includes: anotherObjectType) ifTrue: [ ^ true ].
	(self methodNames includesAll: anotherObjectType methodNames) ifFalse: [ ^ false ].
	assumptionsDictionary at: self add: anotherObjectType.
	^ self allSignaturesConformTo: anotherObjectType underAssumptions: assumptionsDictionary 
	
