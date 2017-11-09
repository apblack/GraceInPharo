test generation
fileTestMethodNamed: name fromFile: aFileReference

	| testBody |
	testBody := WriteStream on: ''.
	testBody nextPutAll: name;
		nextPut: Character cr;
		nextPut: Character tab;
		nextPutAll: 'self parseFile: ''';
		nextPutAll: aFileReference fullName;
		nextPutAll: ''' asFileReference readStream';
		nextPut: Character cr.
	^ testBody contents
