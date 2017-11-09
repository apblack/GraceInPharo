testing
defines: aString
	self assert: (aString isKindOf: String).
	^ names includesKey: aString