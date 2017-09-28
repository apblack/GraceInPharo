generated
scan14X19
	self recordMatch: #(41 45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch