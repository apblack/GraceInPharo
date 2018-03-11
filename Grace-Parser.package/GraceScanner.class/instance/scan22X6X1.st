generated
scan22X6X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan22X6X1X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $s)
						or: [ (currentCharacter between: $u and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch