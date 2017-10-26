generated
scan24X22
	currentCharacter isOpenPunctuation
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter isClosePunctuation
		ifTrue: [ ^ self scan24X16 ].
	currentCharacter = (Character value: 8249)
		ifTrue: [ ^ self scan24X15 ].
	currentCharacter = (Character value: 8250)
		ifTrue: [ ^ self scan24X14 ].
	currentCharacter = (Character value: 8594)
		ifTrue: [ ^ self scan24X13 ].
	currentCharacter = (Character value: 10214)
		ifTrue: [ ^ self scan43 ].
	currentCharacter = (Character value: 10215)
		ifTrue: [ ^ self scan44 ].
	currentCharacter isDecimalDigit
		ifTrue: [ ^ self scan36 ].
	(currentCharacter == Character lf
		or: [ currentCharacter = (Character value: 8232) ])
		ifTrue: [ ^ self scan25 ].
	currentCharacter isSpaceSeparator
		ifTrue: [ ^ self scan24X8 ].
	^ self scan24X21