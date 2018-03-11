generated
scan22X12
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $l
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(39).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan24 ].
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(15 39).
									self step.
									currentCharacter == $\
										ifTrue: [ ^ self scan24 ].
									((currentCharacter between: Character space and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ])
										ifTrue: [ ^ self scan23 ].
									^ self reportLastMatch ] ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $r)
										or: [ (currentCharacter between: $t and: $z)
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
				or: [ (currentCharacter between: $] and: $k)
						or: [ (currentCharacter between: $m and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch