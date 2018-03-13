generated
scan21X5X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan23 ].
			currentCharacter == $a
				ifTrue:
					[ ^ self scan21X5X1X1 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $`)
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch