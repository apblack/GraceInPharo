generated
scan22X19
	self recordMatch: #(32 39).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(14 39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $<)
				or: [ (currentCharacter between: $> and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch