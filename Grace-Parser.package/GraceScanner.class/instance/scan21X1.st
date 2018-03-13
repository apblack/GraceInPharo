generated
scan21X1
	self recordMatch: #(40).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan21X1X1 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan21X1X2 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $x)
								or: [ currentCharacter == $z or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch