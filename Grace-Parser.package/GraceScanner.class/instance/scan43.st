generated
scan43
	self recordMatch: #(44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan43X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan43X3 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan43X4 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $a)
						or: [ (currentCharacter between: $c and: $t)
								or: [ (currentCharacter between: $w and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch