generated
scan35X26
	self recordMatch: #(39 45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch