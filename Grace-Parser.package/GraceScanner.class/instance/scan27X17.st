generated
scan27X17
	self recordMatch: #(32 41).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(11 41).
			self step.
			currentCharacter ~~ (Character value: 8250)
				ifTrue: [ [ self recordMatch: #(41).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $<
		or: [ (currentCharacter between: $> and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch