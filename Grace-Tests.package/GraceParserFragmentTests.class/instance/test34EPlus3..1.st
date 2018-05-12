tests-Numerals
test34EPlus3
	| result |
	result := self good: #Expression as: #BaseExponentNumeral parse: '34.5E+3'.
	self assert: result value equals: '34.5E+3'.
	self assert: result numberValue equals: 34500