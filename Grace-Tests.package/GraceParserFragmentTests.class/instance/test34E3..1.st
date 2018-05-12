tests-Numerals
test34E3
	| result |
	result := self good: #Expression as: #BaseExponentNumeral parse: '34.5E3'.
	self assert: result value equals: '34.5E3'.
	self assert: result numberValue equals: 34500