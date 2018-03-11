generated
scan22X3X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan22X3X1X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $b)
						or: [ (currentCharacter between: $d and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch