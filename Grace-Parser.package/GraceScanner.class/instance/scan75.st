generated
scan75
	self recordMatch: #(40 44).
	self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ ^ self scan74 ].
	(currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character arrowDown)
				or: [ (currentCharacter between: $! and: (Character value: 159))
						or: [ (currentCharacter
								between: (Character value: 161)
								and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch