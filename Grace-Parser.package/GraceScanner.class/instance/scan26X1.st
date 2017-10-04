generated
scan26X1
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character arrowDown)
						or: [ currentCharacter == $!
								or: [ (currentCharacter between: $# and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ (currentCharacter between: $| and: (Character value: 159))
														or: [ (currentCharacter
																between: (Character value: 161)
																and: (Character value: 8231))
																or: [ currentCharacter >= (Character value: 8233) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch