generated
scan14X7X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan14X7X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $b)
						or: [ (currentCharacter between: $d and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch