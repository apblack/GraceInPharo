accessing
range
	^ currentToken isNil
		ifTrue: [ scanner position to: scanner position - 1]
		ifFalse: [ currentToken range ]