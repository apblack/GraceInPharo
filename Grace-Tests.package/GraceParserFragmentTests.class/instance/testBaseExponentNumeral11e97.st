tests-Numerals
testBaseExponentNumeral11e97
	| result |
	result := self good: #Numeral parse: '11e97'.
	self assert: result value equals: '11e97'.
	self assert: result numberValue equals: 11 * (10 raisedTo: 97).
	