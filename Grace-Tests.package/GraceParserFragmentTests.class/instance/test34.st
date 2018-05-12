tests-Numerals
test34
	| result |
	result := self good: #Expression as: #DecimalNumeral parse: '34'.
	self assert: result value equals: '34'.
	self assert: result numberValue equals: 34