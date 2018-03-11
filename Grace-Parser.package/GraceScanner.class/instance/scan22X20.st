generated
scan22X20
	self recordMatch: #(30 39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch