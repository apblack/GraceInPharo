generated
scan35X1
	self recordMatch: #(45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan35X1X1 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan35X1X2 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $x)
								or: [ currentCharacter == $z or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch