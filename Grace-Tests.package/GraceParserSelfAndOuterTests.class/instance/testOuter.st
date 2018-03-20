tests
testOuter
	| result |
	result := self good: #Expression as: #Outer parse: 'outer'.
	self assert: result objectsOut equals: 1