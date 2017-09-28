generated
scan21X1
	self recordMatch: #(41).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan21X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $/)
				or: [ (currentCharacter between: $: and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch