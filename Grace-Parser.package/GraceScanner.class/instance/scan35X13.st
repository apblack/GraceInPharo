generated
scan35X13
	self recordMatch: #(44 50).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(44).
			self step.
			currentCharacter == $.
				ifTrue: [ self recordMatch: #(39 44).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ] ].
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $-)
				or: [ (currentCharacter between: $/ and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch