generated
scan22X17
	self recordMatch: #(39 45).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $.
				ifTrue: [ self recordMatch: #(31 39).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan24 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan23 ].
					^ self reportLastMatch ] ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $-)
				or: [ (currentCharacter between: $/ and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch