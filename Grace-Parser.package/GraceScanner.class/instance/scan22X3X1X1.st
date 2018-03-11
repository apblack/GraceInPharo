generated
scan22X3X1X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $u
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $d
						ifTrue: [ self recordMatch: #(39).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan24 ].
							currentCharacter == $e
								ifTrue: [ self recordMatch: #(24 39).
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
								or: [ (currentCharacter between: $] and: $c)
										or: [ (currentCharacter between: $e and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $t)
								or: [ (currentCharacter between: $v and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch