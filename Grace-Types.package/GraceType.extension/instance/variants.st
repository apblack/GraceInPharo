*Grace-Types
variants
	| tv |
	self halt: 'check on variants'.
	tv := definingParseNode value acceptVisitor: GraceBuildType new.
	true ifTrue: [^ tv variants].
	
	definingParseNode value isInterface ifTrue: [ ^ { self } ].