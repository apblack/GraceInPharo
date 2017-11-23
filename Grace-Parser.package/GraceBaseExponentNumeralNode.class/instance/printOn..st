printing
printOn: aStream
	super printOn: aStream.
	aStream << '(' << baseExponentNumeralToken value << ')'