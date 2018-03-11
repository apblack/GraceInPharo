generated
scan27X1X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $c
						ifTrue: [ self recordMatch: #(39).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan24 ].
							currentCharacter == $e
								ifTrue: [ self recordMatch: #(27 39).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan24 ].
									((currentCharacter between: Character space and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ])
										ifTrue: [ ^ self scan23 ].
									^ self reportLastMatch ].
							((currentCharacter between: Character space and: $!)
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $d)
												or: [ (currentCharacter between: $f and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan23 ].
							^ self reportLastMatch ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $b)
										or: [ (currentCharacter between: $d and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $`)
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $e)
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch