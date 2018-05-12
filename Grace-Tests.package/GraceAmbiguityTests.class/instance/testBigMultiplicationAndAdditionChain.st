minigrace failing
testBigMultiplicationAndAdditionChain
	| result check |
	result := self good: #Module parse: 'var x := 6 * 3 * 8 + 4 / 5 - 3 / 7 + 2 + 1'.
	check := super good: #Module parse: 'var x :=(6 * 3 * 8) + (4 / 5) - (3 / 7) + 2 + 1'.
	self assert: result equals: check
	
	 