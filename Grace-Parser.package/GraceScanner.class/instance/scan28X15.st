generated
scan28X15
	self recordMatch: #(40).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $r
				ifTrue: [ self recordMatch: #(19 40).
					self step.
					currentCharacter ~~ (Character value: 8250)
						ifTrue: [ [ self recordMatch: #(40).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $q
				or: [ (currentCharacter between: $s and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(40).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $`
		or: [ (currentCharacter between: $b and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch