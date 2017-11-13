generated
scan1X20
	(currentCharacter == $!
		or: [ (currentCharacter between: $$ and: $%)
				or: [ ('*<' includes: currentCharacter)
						or: [ (currentCharacter between: $> and: $@)
								or: [ ('\^~÷' includes: currentCharacter)
										or: [ currentCharacter =
												(Character value: 8800)
												or: [ (currentCharacter
														between: (Character value: 8804)
														and: (Character value: 8805))
														or: [ currentCharacter =
																(Character value: 8901) ] ] ] ] ] ] ])
		ifTrue:
			[ ^ self scan1X11 ].
	^ self scan1X19