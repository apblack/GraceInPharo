generated
scan22X29
	self recordMatch: #(4 39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch