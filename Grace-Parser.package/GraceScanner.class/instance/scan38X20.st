generated
scan38X20
	self recordMatch: #(7 45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch