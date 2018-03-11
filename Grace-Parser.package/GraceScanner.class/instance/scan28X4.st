generated
scan28X4
	self recordMatch: #(40).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan28X4X1 ].
	(currentCharacter <= $o
		or: [ (currentCharacter between: $q and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch