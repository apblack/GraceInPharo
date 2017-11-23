printing
printOn: aStream
	super printOn: aStream.
	aStream << '(' << decimalNumeralToken value << ')'