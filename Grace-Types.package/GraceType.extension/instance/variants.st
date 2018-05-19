*Grace-Types
variants
	| tv |
	self halt: 'check on variants'.
	tv := GraceBuildType from: definingParseNode value.
	true ifTrue: [^ tv variants].
	
	definingParseNode value isInterface ifTrue: [ ^ { self } ].