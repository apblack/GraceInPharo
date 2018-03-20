tests
testNotOuterRequestFirst
	| result |
	result := self good: #Expression as: #ImplicitRequest parse: 'outerPrint "hello"'.
	self assert: result requestedName equals: 'outerPrint(_)'