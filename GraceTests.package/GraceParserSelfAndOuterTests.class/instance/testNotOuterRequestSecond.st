tests
testNotOuterRequestSecond
	| result |
	result := self good: #Expression as: #ExplicitRequest parse: 'outer.outerPrint "hello"'.
	self assert: result receiver isA: #Outer.
	self assert: result receiver isA: #Expression.
	self assert: result requestedName equals: 'outerPrint(_)'