generated
scan27X3
	self recordMatch: #(41).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan27X3X1 ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(41).
			self step.
			currentCharacter == $c
				ifTrue: [ self recordMatch: #(41).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(4 41).
							self step.
							currentCharacter ~~ (Character value: 8250)
								ifTrue: [ [ self recordMatch: #(41).
									self step.
									currentCharacter ~~ (Character value: 8250) ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $d
						or: [ (currentCharacter between: $f and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ])
						ifTrue: [ [ self recordMatch: #(41).
							self step.
							currentCharacter ~~ (Character value: 8250) ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $b
				or: [ (currentCharacter between: $d and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(41).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $a
		or: [ (currentCharacter between: $c and: $m)
				or: [ (currentCharacter between: $o and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch