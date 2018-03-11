generated
scan22X4X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan24 ].
			currentCharacter == $a
				ifTrue:
					[ ^ self scan22X4X1X1 ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $`)
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch