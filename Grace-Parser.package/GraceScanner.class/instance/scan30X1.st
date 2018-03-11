generated
scan30X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(40).
									self step.
									currentCharacter == $e
										ifTrue: [ self recordMatch: #(27 40).
											self step.
											currentCharacter ~~ (Character value: 8250)
												ifTrue: [ [ self recordMatch: #(40).
													self step.
													currentCharacter ~~ (Character value: 8250) ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $d
										or: [ (currentCharacter between: $f and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ])
										ifTrue: [ [ self recordMatch: #(40).
											self step.
											currentCharacter ~~ (Character value: 8250) ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $b
								or: [ (currentCharacter between: $d and: (Character value: 8249))
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
					^ self reportLastMatch ].
			(currentCharacter <= $e
				or: [ (currentCharacter between: $g and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
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
	^ self reportLastMatch