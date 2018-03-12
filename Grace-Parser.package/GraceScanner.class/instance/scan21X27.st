generated
scan21X27
	self recordMatch: #(3 38).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch