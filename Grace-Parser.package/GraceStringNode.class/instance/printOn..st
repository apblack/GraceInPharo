printing
printOn: aStream
	super printOn: aStream.
	aStream << '['.
	self printCharactersOn: aStream limitedTo: 50.
	aStream << ']'