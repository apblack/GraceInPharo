generated
scan26X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $j
		ifTrue:
			[ ^ self scan26X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $i)
						or: [ (currentCharacter between: $k and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch