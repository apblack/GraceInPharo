visiting
visitLiteralNode: aLiteral
	| v |
	v := aLiteral value.
	(self endsWith: $() ifFalse: [ self ensureASpace  ].
	v isCharacter ifTrue: [ v := v asString ].
	v isString ifTrue: [
		self << '"' << (v copyReplaceAll: '"' with: '\"') << '" '
	] ifFalse: [ 
		self << v printString
	]