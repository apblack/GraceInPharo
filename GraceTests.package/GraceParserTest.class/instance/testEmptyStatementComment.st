tests-Comments
testEmptyStatementComment
	| result |
	result := self good: #Block as: #Block parse: 
		'{  // nothing here but a comment
}'.
	self assert: result isA: #Block.
	result body items do: [ :each | self assert: each isA: #EmptyStatement ]