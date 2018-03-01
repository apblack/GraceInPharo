generated
scan44
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan44X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan44X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $t)
								or: [ (currentCharacter between: $v and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch