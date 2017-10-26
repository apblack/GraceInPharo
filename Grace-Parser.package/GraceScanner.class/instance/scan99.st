generated
scan99
	[ self recordMatch: #(43 55).
	self step.
	currentCharacter isDecimalDigit ] whileTrue.
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch