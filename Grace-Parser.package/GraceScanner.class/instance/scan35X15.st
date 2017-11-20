generated
scan35X15
	self recordMatch: #(37 44).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(12 44).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $<)
				or: [ (currentCharacter between: $> and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch