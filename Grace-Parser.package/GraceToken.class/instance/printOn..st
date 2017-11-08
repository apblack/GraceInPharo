printing
printOn: aStream
	aStream
		nextPut: $[;
		nextPutAll: self value;
		nextPut: $,;
		nextPutAll: self rangePrintString;
		nextPut: $,;
		nextPutAll: (self class symbolsFor: ids);
		nextPutAll: ']'