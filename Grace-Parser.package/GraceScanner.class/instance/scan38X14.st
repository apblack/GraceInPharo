generated
scan38X14
	self recordMatch: #(45 51).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $.
				ifTrue: [ self recordMatch: #(38 45).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan40 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan39 ].
					^ self reportLastMatch ] ].
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $-)
				or: [ (currentCharacter between: $/ and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch