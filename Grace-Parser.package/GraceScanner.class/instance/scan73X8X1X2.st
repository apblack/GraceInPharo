generated
scan73X8X1X2
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character arrowDown)
						or: [ (currentCharacter between: $! and: (Character value: 159))
								or: [ (currentCharacter
										between: (Character value: 161)
										and: (Character value: 8231))
										or: [ (currentCharacter
												between: (Character value: 8233)
												and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ])
		ifTrue:
			[ self scan73X8X1X1 ].
	^ self reportLastMatch