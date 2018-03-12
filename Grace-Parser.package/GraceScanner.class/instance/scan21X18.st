generated
scan21X18
	self recordMatch: #(30 38).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(14 38).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $<)
				or: [ (currentCharacter between: $> and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch