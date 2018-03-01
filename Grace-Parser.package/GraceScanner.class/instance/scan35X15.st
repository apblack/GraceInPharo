generated
scan35X15
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scan35X9 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $m)
						or: [ (currentCharacter between: $o and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch