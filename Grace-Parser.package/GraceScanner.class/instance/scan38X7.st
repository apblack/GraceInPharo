generated
scan38X7
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan38X7X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch