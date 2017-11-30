visit methods
visitBinaryRequest: aBinaryRequest
	| operators |
	operators := (aBinaryRequest ops collect: #name) asSet.
	operators size = 1
		ifTrue: [ ^ super visitBinaryRequest: aBinaryRequest ].
	(self multiplicativeAndAdditive includesAll: operators)
		ifTrue: [ ^ super visitBinaryRequest: (self implementPrecedenceForPlusAndTimes: aBinaryRequest) ].
	^ self
		precedenceError: 'Sorry, I don''t know how to parenthesize this sequence of binary operators'
		node: aBinaryRequest