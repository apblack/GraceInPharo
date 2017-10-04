generated
scan36X1
	self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan36X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $/)
				or: [ (currentCharacter between: $: and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch