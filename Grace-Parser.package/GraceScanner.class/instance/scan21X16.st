generated
scan21X16
	self recordMatch: #(38 44).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(38).
			self step.
			currentCharacter == $.
				ifTrue: [ self recordMatch: #(32 38).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan23 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan22 ].
					^ self reportLastMatch ] ].
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $-)
				or: [ (currentCharacter between: $/ and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch