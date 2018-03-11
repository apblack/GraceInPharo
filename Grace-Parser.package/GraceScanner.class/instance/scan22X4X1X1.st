generated
scan22X4X1X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $g
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $m
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(11 39).
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
								or: [ (currentCharacter between: $] and: $`)
										or: [ (currentCharacter between: $b and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $l)
								or: [ (currentCharacter between: $n and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $f)
						or: [ (currentCharacter between: $h and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch