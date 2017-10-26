generated
scan96
	[ self recordMatch: #(43 45 59).
	self step.
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan96X2 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr
				or: [ currentCharacter =
						(Character value: 8232) ] ])
		ifTrue:
			[ ^ self scan96X4 ].
	currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $. and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or: [ ('\^|~' includes: currentCharacter)
																or: [ (currentCharacter
																		between: (Character value: 8804)
																		and: (Character value: 8805))
																		or: [ currentCharacter =
																				(Character value: 8901) ] ] ] ] ] ] ] ] ] ]
		whileTrue.
	^ self scan96X5