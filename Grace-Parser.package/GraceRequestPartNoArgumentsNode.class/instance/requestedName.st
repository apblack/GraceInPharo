naming
requestedName
	self requestPart isIdentifier ifTrue: [ 
		^ self requestPart value ].
	^ 'prefix' , self requestPart value 