generated
scan107
	[ self recordMatch: #(44 56).
	self step.
	currentCharacter between: $0 and: $9 ] whileTrue.
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch