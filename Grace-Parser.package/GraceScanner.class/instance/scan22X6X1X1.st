generated
scan22X6X1X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $h
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $o
				ifTrue: [ self recordMatch: #(39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					currentCharacter == $d
						ifTrue: [ self recordMatch: #(8 39).
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
								or: [ (currentCharacter between: $] and: $c)
										or: [ (currentCharacter between: $e and: $z)
												or: [ currentCharacter >= $| ] ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $n)
								or: [ (currentCharacter between: $p and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $g)
						or: [ (currentCharacter between: $i and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch