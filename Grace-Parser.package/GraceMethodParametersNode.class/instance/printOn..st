printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	names do: [ :n | n id value printOn: aStream ]
		separatedBy: [ aStream nextPutAll: ', '].
	aStream nextPut: $)