generated
scan80X1X1X1X1
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character arrowDown)
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $-)
								or: [ (currentCharacter between: $/ and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ (currentCharacter between: $| and: (Character value: 159))
														or: [ currentCharacter >= (Character value: 161) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch