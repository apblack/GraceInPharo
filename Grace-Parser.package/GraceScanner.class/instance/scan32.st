generated
scan32
	[ self recordMatch: #(42 44).
	self step.
	currentCharacter isDigit ] whileTrue.
	(currentCharacter <= $/
		or: [ (currentCharacter between: $: and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch