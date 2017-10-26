generated
scan24X8
	[ self recordMatch: #(42 44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter isSpaceSeparator ] whileTrue.
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character arrowDown)
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ (currentCharacter between: $| and: (Character value: 159))
												or: [ currentCharacter >= (Character value: 161) ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch