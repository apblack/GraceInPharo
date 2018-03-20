tests
testTwoOuters
	| result |
	result := self good: #Expression as: #Outer parse: 'outer.outer'.
	self assert: result objectsOut equals: 2