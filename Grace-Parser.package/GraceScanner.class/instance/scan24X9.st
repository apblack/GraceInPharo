generated
scan24X9
	self recordMatch: #(42 46).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	(currentCharacter isSpaceSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue: [ ^ self scan25 ].
	((currentCharacter between: Character cr and: Character arrowDown)
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ (currentCharacter between: $| and: (Character value: 159))
										or: [ currentCharacter >= (Character value: 161) ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch