generated
scan24X20
	self recordMatch: #(38 42).
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