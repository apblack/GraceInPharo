adding
add: aVariable withName: aString
	self assert: (aString isKindOf: String).
	names at: aString put: aVariable