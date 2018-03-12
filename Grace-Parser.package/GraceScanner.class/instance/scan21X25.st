generated
scan21X25
	self recordMatch: #(12 38).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch