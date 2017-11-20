generated
scan47X2
	self recordMatch: #(45).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan47X2X1 ].
	currentCharacter == $y
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(45).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(30 45).
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
			(currentCharacter <= $o
				or: [ (currentCharacter between: $q and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(45).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $q
		or: [ (currentCharacter between: $s and: $x)
				or: [ (currentCharacter between: $z and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch