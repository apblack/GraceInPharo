generated
scan14X3
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan14X3X1 ].
	currentCharacter == $y
		ifTrue: [ ^ self scan14X3X2 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $q)
						or: [ (currentCharacter between: $s and: $x)
								or: [ currentCharacter == $z or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch