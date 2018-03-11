generated
scan22X3
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan22X3X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $w)
						or: [ (currentCharacter between: $y and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch