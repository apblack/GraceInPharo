accessing
range
	^ currentToken ifNil: [ 
		GraceRange from: scanner position to: scanner position - 1 in: scanner
	] ifNotNil: [ 
		currentToken range
	]