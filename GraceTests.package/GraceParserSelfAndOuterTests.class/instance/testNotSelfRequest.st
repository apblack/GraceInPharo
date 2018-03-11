tests
testNotSelfRequest
	| result |
	result := self good: #Expression as: #ExplicitRequest parse: 'selfish.print "hello"'.
	self assert: result receiver isA: #Identifier.
	self assert: result receiver isA: #Expression.