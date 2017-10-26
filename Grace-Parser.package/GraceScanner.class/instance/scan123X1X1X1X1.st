generated
scan123X1X1X1X1
	[ self recordMatch: #(43).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan124 ].
	currentCharacter isSpaceSeparator ] whileTrue.
	(currentCharacter <= Character arrowDown
		or: [ (currentCharacter between: $! and: $-)
				or: [ (currentCharacter between: $/ and: (Character value: 159))
						or: [ (currentCharacter
								between: (Character value: 161)
								and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch