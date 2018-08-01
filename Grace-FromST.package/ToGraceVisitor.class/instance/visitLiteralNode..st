visiting
visitLiteralNode: aLiteral
	| v |
	v := aLiteral value.
	(self endsWith: $() ifFalse: [ self ensureASpace  ].
	v isString ifTrue: [
		self << '"' << (v copyReplaceAll: '"' with: '\"') << '" '
	] ifFalse: [ 
		self << v printString
	]