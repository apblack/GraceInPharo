conformance
conformsTo: anotherObjectType inType: selfType underAssumptions: assumptionsDictionary
	| other |
	anotherObjectType isUnknown ifTrue: [ ^ true ].
	anotherObjectType typeValue == self ifTrue: [ ^ true ].
	other := anotherObjectType isSelfType ifTrue: [ selfType ] ifFalse: [ anotherObjectType ].
	other isVariant ifTrue: [ ^ other variants anySatisfy: [ :each | 
			self conformsTo: each inType: selfType underAssumptions: assumptionsDictionary ] ].
	(assumptionsDictionary at: self includes: other) ifTrue: [ ^ true ].
	(self methodNames includesAll: other methodNames) ifFalse: [ ^ false ].
	assumptionsDictionary at: self add: other.
	^ self allSignaturesConformTo: other underAssumptions: assumptionsDictionary 
	
