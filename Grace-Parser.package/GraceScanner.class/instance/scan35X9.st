generated
scan35X9
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $k
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(45).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					currentCharacter == $o
						ifTrue: [ self recordMatch: #(45).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan37 ].
							currentCharacter == $w
								ifTrue: [ self recordMatch: #(45).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan37 ].
									currentCharacter == $n
										ifTrue: [ self recordMatch: #(30 45).
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
												or: [ (currentCharacter between: $] and: $m)
														or: [ (currentCharacter between: $o and: $z)
																or: [ currentCharacter >= $| ] ] ] ])
										ifTrue: [ ^ self scan36 ].
									^ self reportLastMatch ].
							((currentCharacter between: Character space and: $!)
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $v)
												or: [ (currentCharacter between: $x and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan36 ].
							^ self reportLastMatch ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $n)
										or: [ (currentCharacter between: $p and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $m)
								or: [ (currentCharacter between: $o and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $j)
						or: [ (currentCharacter between: $l and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch