generated
scan23
	[ self recordMatch: #(39).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	(currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $z)
						or: [ currentCharacter >= $| ] ] ] ] whileTrue.
	^ self reportLastMatch