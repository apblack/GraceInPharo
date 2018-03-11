generated
scan22X27
	self recordMatch: #(1 39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch