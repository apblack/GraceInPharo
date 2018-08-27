visiting
visitLiteralNode: aLiteral
	| v |
	v := aLiteral value.
	(self endsWith: $()
		ifFalse: [ self ensureASpace ].
	v isCharacter
		ifTrue: [ v := v asString ].
	v isString
		ifTrue: [ self emitEscapedString: v ]
		ifFalse: [ self << v printString ]