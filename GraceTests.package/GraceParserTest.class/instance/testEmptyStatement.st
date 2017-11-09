tests-Comments
testEmptyStatement
	| result |
	result := self good: #Block parse: 
		'{
}'.
	self assert: result isA: #Block.
	self assert: result body items first isA: #EmptyStatement