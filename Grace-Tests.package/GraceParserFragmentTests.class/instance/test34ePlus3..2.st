tests-Numerals
test34ePlus3
	| result |
	result := self good: #Expression as: #BaseExponentNumeral parse: '34.5e+3'.
	self assert: result value equals: '34.5e+3'.
	self assert: result numberValue equals: 34500