generated
scan21X2X1X1X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $c
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan23 ].
					currentCharacter == $t
						ifTrue: [ self recordMatch: #(17 40).
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
								or: [ (currentCharacter between: $] and: $s)
										or: [ (currentCharacter between: $u and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan22 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $b)
								or: [ (currentCharacter between: $d and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch