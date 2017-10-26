generated
scan92X8
	self recordMatch: #(43 46).
	self step.
	(currentCharacter isSpaceSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue: [ ^ self scan93 ].
	(currentCharacter <= Character tab
		or:
			[ (currentCharacter between: Character pageUp and: Character arrowDown)
				or: [ (currentCharacter between: $! and: (Character value: 159))
						or: [ (currentCharacter
								between: (Character value: 161)
								and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch