tests
testSelf
	| result |
	result := self good: #Expression as: #Self parse: 'self'.
	self assert: result objectsOut equals: 0