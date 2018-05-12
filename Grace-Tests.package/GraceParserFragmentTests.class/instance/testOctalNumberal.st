tests-Numerals
testOctalNumberal
	| result |
	result := self good: #Expression as: #BasedRadixNumeral parse: '8x34'.
	self assert: result value equals: '8x34'.
	self assert: result numberValue equals: 28