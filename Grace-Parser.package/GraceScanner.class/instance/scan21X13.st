generated
scan21X13
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan23 ].
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan23 ].
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(19 40).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan23 ].
									((currentCharacter between: Character space and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ])
										ifTrue: [ ^ self scan22 ].
									^ self reportLastMatch ] ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $r)
										or: [ (currentCharacter between: $t and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan22 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $`)
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch