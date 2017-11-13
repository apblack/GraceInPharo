generated
scan35X14
	self recordMatch: #(43 58).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch