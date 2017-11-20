generated
scan47X13
	self recordMatch: #(45).
	self step.
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(25 45).
					self step.
					currentCharacter ~~ (Character value: 8250)
						ifTrue: [ [ self recordMatch: #(45).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $d
				or: [ (currentCharacter between: $f and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(45).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $r
		or: [ (currentCharacter between: $t and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch