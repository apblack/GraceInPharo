tests
testFooOuterNode
	| result |
	result := self parse: 'foo.outerNode' andCheckThatItsA: #ExplicitRequest.
	self assert: result receiver isA: #Identifier.
	self assert: result message isA: #Identifier.
	self assert: result message idToken value equals: 'outerNode'