tests-Comments
testEmptyBlock
	| result |
	result := self good: #Block parse: 
		'{
}'.
	self assert: result isA: #Block.
	self assert: result items isEmpty description: 'Block is not empty'