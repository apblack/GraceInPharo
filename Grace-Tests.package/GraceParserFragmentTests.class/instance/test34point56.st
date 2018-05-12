tests-Numerals
test34point56
	| result |
	result := self good: #Expression as: #DecimalNumeral parse: '34.56'.
	self assert: result value equals: '34.56'.
	self assert: result numberValue equals: 34.56