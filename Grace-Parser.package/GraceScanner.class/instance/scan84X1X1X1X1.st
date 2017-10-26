generated
scan84X1X1X1X1
	[ self recordMatch: #(42).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan85 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter isSpaceSeparator ] whileTrue.
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character arrowDown)
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $-)
								or: [ (currentCharacter between: $/ and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ (currentCharacter between: $| and: (Character value: 159))
														or: [ currentCharacter >= (Character value: 161) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch