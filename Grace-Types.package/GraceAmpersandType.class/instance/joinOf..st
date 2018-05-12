conformance
joinOf: aSetOfSignatures
	| sigs firstSig |
	aSetOfSignatures size = 1 ifTrue: [ ^ aSetOfSignatures first ].
	sigs := aSetOfSignatures asOrderedCollection.
	firstSig := sigs removeFirst.
	self halt: 'finish implementing joinOf:'