conformance
conformsTo: anotherObjectType inType: selfType underAssumptions: assumptionsDictionary
	| other |
	anotherObjectType isUnknown ifTrue: [ ^ true ].
	anotherObjectType == self ifTrue: [ ^ true ].
	other := anotherObjectType isSelfType ifTrue: [ selfType ] ifFalse: [ anotherObjectType ].
	(assumptionsDictionary at: self includes: other) ifTrue: [ ^ true ].
	(self methodNames includesAll: other methodNames) ifFalse: [ ^ false ].
	assumptionsDictionary at: self add: other.
	^ self allSignaturesConformTo: other underAssumptions: assumptionsDictionary 
	
