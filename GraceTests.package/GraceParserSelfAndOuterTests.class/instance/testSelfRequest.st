tests
testSelfRequest
	| result |
	result := self good: #Expression as: #ExplicitRequest parse: 'self.print "hello"'.
	self assert: result receiver isA: #Self.
	self assert: result receiver isA: #Oneself.
	self assert: result receiver objectsOut equals: 0