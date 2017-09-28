generated
scan23
	[ self recordMatch: #(41 44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $/)
				or: [ (currentCharacter between: $: and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch