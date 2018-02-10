generated
scan38X4X1X1
	self recordMatch: #(45).
	self step.
	currentCharacter == $T
		ifTrue:
			[ ^ self scan38X4X1X1X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $S)
				or: [ (currentCharacter between: $U and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch