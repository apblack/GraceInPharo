generated
scan46
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan46X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan46X3 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan46X4 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $a)
						or: [ (currentCharacter between: $c and: $t)
								or: [ (currentCharacter between: $w and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self reportLastMatch