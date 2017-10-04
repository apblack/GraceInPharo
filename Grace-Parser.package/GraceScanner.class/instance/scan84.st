generated
scan84
	[ self recordMatch: #(40 52).
	self step.
	currentCharacter isDigit ] whileTrue.
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch