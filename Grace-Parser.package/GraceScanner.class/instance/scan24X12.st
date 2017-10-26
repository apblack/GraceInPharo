generated
scan24X12
	self recordMatch: #(42 47).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch