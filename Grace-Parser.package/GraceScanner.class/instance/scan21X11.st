generated
scan21X11
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $k
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan23 ].
					currentCharacter == $o
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan23 ].
							currentCharacter == $w
								ifTrue: [ self recordMatch: #(40).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan23 ].
									currentCharacter == $n
										ifTrue: [ self recordMatch: #(27 40).
											self step.
											currentCharacter == $\
												ifTrue: [ ^ self scan23 ].
											((currentCharacter between: Character space and: $!)
												or: [ (currentCharacter between: $# and: $[)
														or: [ (currentCharacter between: $] and: $z)
																or: [ currentCharacter >= $| ] ] ])
												ifTrue: [ ^ self scan22 ].
											^ self reportLastMatch ].
									((currentCharacter between: Character space and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $m)
														or: [ (currentCharacter between: $o and: $z)
																or: [ currentCharacter >= $| ] ] ] ])
										ifTrue: [ ^ self scan22 ].
									^ self reportLastMatch ].
							((currentCharacter between: Character space and: $!)
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $v)
												or: [ (currentCharacter between: $x and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan22 ].
							^ self reportLastMatch ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $n)
										or: [ (currentCharacter between: $p and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan22 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $m)
								or: [ (currentCharacter between: $o and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $j)
						or: [ (currentCharacter between: $l and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch