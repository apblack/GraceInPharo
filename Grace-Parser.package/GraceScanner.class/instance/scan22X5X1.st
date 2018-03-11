generated
scan22X5X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(39).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan24 ].
							currentCharacter == $x
								ifTrue: [ self recordMatch: #(25 39).
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
										or: [ (currentCharacter between: $] and: $w)
												or: [ (currentCharacter between: $y and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan23 ].
							^ self reportLastMatch ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $h)
										or: [ (currentCharacter between: $j and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $e)
								or: [ (currentCharacter between: $g and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch