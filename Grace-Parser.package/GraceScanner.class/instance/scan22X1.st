generated
scan22X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan22X1X1 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan22X1X2 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $x)
								or: [ currentCharacter == $z or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch