generated
scan28X15
	self recordMatch: #(42).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(42).
					self step.
					currentCharacter == $d
						ifTrue:
							[ ^ self scan28X12 ].
					(currentCharacter <= $c
						or: [ (currentCharacter between: $e and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(42).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $`
				or: [ (currentCharacter between: $b and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(42).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch