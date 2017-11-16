printing
printCharactersOn: aStream limitedTo: limit
	| literalChars |
	literalChars := chars value.
	literalChars value size > limit ifTrue: [ 
		1 to: limit - 1 do: [ :ix | aStream put: (literalChars at: ix)].
		aStream put: $….
		^ self
	] ifFalse: [
		aStream nextPutAll: literalChars
	]
		
