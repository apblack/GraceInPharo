generated
scan43X2
	self recordMatch: #(44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(44).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $r
				ifTrue: [ self recordMatch: #(44).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(44).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan37 ].
							currentCharacter == $d
								ifTrue: [ self recordMatch: #(44).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan37 ].
									currentCharacter == $e
										ifTrue: [ self recordMatch: #(3 44).
											self step.
											currentCharacter == $\
												ifTrue: [ ^ self scan37 ].
											((currentCharacter between: Character space and: $!)
												or: [ (currentCharacter between: $# and: $[)
														or: [ (currentCharacter between: $] and: $z)
																or: [ currentCharacter >= $| ] ] ])
												ifTrue: [ ^ self scan36 ].
											^ self reportLastMatch ].
									((currentCharacter between: Character space and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $d)
														or: [ (currentCharacter between: $f and: $z)
																or: [ currentCharacter >= $| ] ] ] ])
										ifTrue: [ ^ self scan36 ].
									^ self reportLastMatch ].
							((currentCharacter between: Character space and: $!)
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $c)
												or: [ (currentCharacter between: $e and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan36 ].
							^ self reportLastMatch ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $h)
										or: [ (currentCharacter between: $j and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ] ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch