generated
scan21X4X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan21X4X1X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $b)
						or: [ (currentCharacter between: $d and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch