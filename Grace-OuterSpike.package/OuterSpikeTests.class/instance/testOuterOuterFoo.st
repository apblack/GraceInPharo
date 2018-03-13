tests
testOuterOuterFoo
	| result |
	result := self parse: 'outer.outer.foo' andCheckThatItsA: #OuterRequest.
	self assert: result receiver isA: #Outer.
	self assert: result message isA: #Identifier.
	self assert: result message idToken value equals: 'foo'