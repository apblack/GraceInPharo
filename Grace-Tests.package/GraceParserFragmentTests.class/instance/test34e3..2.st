tests-Numerals
test34e3
	| result |
	result := self good: #Expression as: #BaseExponentNumeral parse: '34.5e3'.
	self assert: result value equals: '34.5e3'.
	self assert: result numberValue equals: 34500