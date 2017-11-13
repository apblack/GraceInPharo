accessing
scanner
	self tokenVariables , self nodeVariables , self compositeNodeVariables , self otherVariables do: [ :each |
		(self perform: each) ifNotNil: [ :s | ^ s scanner ] ].
	^ self error: 'can''t find scanner'