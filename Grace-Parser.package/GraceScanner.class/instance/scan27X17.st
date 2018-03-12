generated
scan27X17
	self recordMatch: #(39).
	self step.
	currentCharacter == $n
		ifTrue:
			[ ^ self scan27X12 ].
	(currentCharacter <= $m
		or: [ (currentCharacter between: $o and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(39).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch