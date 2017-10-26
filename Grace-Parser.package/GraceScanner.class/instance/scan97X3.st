generated
scan97X3
	self recordMatch: #(43).
	self step.
	currentCharacter isDecimalDigit
		ifTrue:
			[ ^ self scan97X2 ].
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch