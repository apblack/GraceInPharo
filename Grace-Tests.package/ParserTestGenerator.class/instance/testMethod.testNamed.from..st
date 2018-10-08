test generation
testMethod: kind testNamed: name from: stream
	
	| testBody |
	testBody := WriteStream on: ''.
	testBody nextPutAll: name.
	testBody nextPut: Character cr.
	testBody nextPut: Character tab.
	testBody nextPutAll: 'self '.
	testBody nextPutAll: kind.
	testBody nextPutAll: ': #Module parse: '''.
	stream contents do: [ :ch | 
		testBody nextPut: ch.
		(ch == $') ifTrue: [ testBody nextPut: ch ] ].
	testBody nextPut: $'.
	testBody nextPut: Character cr.
	^ testBody contents
	
	
	
	